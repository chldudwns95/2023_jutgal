let data;

$.ajax({
    url: 'menu/list',
    method: 'GET',
    dataType: 'json',
    async: false,
    success: result => data = result,
    message: message => console.log(message)
});

let tree = new tui.Tree('#tree', {
    data: data,
    nodeDefaultState: 'opened' //기본상태
}).enableFeature('Selectable', {
    selectedClassName: 'tui-tree-selected',
}).enableFeature('Draggable', {
    helperClassName: 'tui-tree-drop',
    lineClassName: 'tui-tree-line',
    isSortable: true
}).enableFeature('Ajax', {
    command: {
        create: {
            url: 'menu/add',
            contentType: 'application/json',
            method: 'POST',
            params: function (event) {
                let maxOrder = -1;
                let childIds = tree.getChildIds(event.parentId);
                childIds.forEach(item => {
                    if (maxOrder < tree.getNodeIndex(item)) {
                        maxOrder = tree.getNodeIndex(item)
                    }
                });

                let parentCode = event.parentId === tree.getRootNodeId() ? 0 : tree.getNodeData(event.parentId).code

                return {
                    name: '새 메뉴',
                    order: maxOrder + 1,
                    parentCode: parentCode
                }
            }
        },
        remove: {
            url: function (data) {
                return 'menu/delete/' + tree.getNodeData(data.nodeId).code;
            },
            method: 'GET'
        },
        move: {
            url: 'menu/move',
            contentType: 'application/json',
            method: 'POST',
            params: function (event) {
                let index = event.index;
                let nodeId = event.nodeId;
                let newParentId = event.newParentId;

                let order = (tree.getParentId(nodeId) === newParentId) && (index > tree.getNodeIndex(nodeId)) ? index - 1 : index;
                let parentCode = newParentId === tree.getRootNodeId() ? 0 : tree.getNodeData(newParentId).code;
                let code = tree.getNodeData(nodeId).code;

                return {
                    code: code,
                    parentCode: parentCode,
                    order: order,
                }
            }
        }
    },
    parseData: function (command, responseData) {
        if (responseData) {
            return responseData;
        } else
            return false;
    }
});

tree.on({
    successAjaxResponse: function (event) {
        switch (event.command) {
            case 'create': {
                let data = {
                    code: event.data.response.code,
                    parentCode: event.data.response.parentCode
                }
                tree.setNodeData(event.data.callback[0], data, {useAjax: false});
                return;
            }
        }
    },
    failAjaxResponse: function (event) {
        console.log('fail');
    },
    errorAjaxResponse: function (event) {
        console.log('message');
    }
});

tree.on('select', function (event) {
    $.ajax({
        url: 'menu/' + tree.getNodeData(event.nodeId).code,
        method: 'GET',
        dataType: 'json',
        success: result => {
            let menuPath = tree.getNodeData(event.nodeId).text;
            let parentNodeId = tree.getParentId(event.nodeId);
            let form = document.getElementById('menuForm');

            while (parentNodeId != null) {
                if (parentNodeId === tree.getRootNodeId()) break;
                menuPath = tree.getNodeData(parentNodeId).text + ' > ' + menuPath;
                parentNodeId = tree.getParentId(parentNodeId);
            }

            document.getElementById('menuPath').innerHTML = menuPath;

            form.name.value = result.name;
            form.engName.value = result.engName;
            form.information.value = result.information;
            form.show.checked = result.show;
            form.boardCode.value = result.boardCode;
            form.type.forEach(item => {
                if (item.value === result.type) {
                    item.checked = true;
                }
            });

            typeChange(result.type);
        },
        message: message => console.log(message)
    });
});

tree.on('beforeSelect', function (event) {
    if (event.nodeId === event.prevNodeId) {
        tree.deselect(event.nodeId);
        return false;
    }
});

tree.on('deselect', function (event) {
    document.getElementById('menuForm').reset();
    document.getElementById('menuPath').innerHTML = '선택된 메뉴가 없습니다';
});

const addBtn = document.getElementById('addBtn');
const removeBtn = document.getElementById('removeBtn');
const openAllNodeBtn = document.getElementById('openAllNodeBtn');
const closeAllNodeBtn = document.getElementById('closeAllNodeBtn');
const saveBtn = document.getElementById('saveBtn');

addBtn.addEventListener('click', function (event) {
    let selectedNodeId = tree.getSelectedNodeId();
    let parentId = selectedNodeId != null ? selectedNodeId : tree.getRootNodeId();
    tree.add(
        {text: '새 메뉴'},
        parentId,
        {isSilent: false, useAjax: true}
    );
});

removeBtn.addEventListener('click', function (event) {
    tree.remove(
        tree.getSelectedNodeId(),
        {isSilent: false, useAjax: true}
    );
});

openAllNodeBtn.addEventListener('click', function (event) {
    tree.each(function (node, nodeId) {
        tree.open(nodeId, true);
    }, tree.getRootNodeId());
});

closeAllNodeBtn.addEventListener('click', function (event) {
    tree.close(tree.getRootNodeId(), true);
});

saveBtn.addEventListener('click', function (event) {
    let form = document.getElementById('menuForm');
    let selectedNodeId = tree.getSelectedNodeId();

    let data = {
        code: tree.getNodeData(selectedNodeId).code,
        type: document.querySelector('[name=type]:checked').value,
        boardCode: form.boardCode.value,
        name: form.name.value,
        engName: form.engName.value,
        information: form.information.value,
        show: form.show.checked
    }

    $.ajax({
        url: 'menu/update',
        method: 'POST',
        data: JSON.stringify(data),
        contentType: 'application/json',
        success: result => {
            tree.setNodeData(selectedNodeId, {text: data.name}, {useAjax: false});
            alert("수정 완료");
        },
        message: message => alert("수정 실패")
    });
});

document.querySelectorAll('[name=type]').forEach(element => {
    element.addEventListener('change', function (event) {
        typeChange(element.value);
    });
});

function typeChange(type) {
    const boardSelect = document.querySelector('[name=boardCode]').parentNode.parentNode;
    if (type === 'board') {
        boardSelect.style.display = 'block';
        boardSelect.previousElementSibling.style.display = 'block';
    } else {
        boardSelect.style.display = 'none';
        boardSelect.previousElementSibling.style.display = 'none';
    }
}