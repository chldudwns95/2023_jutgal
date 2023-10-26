function readURL(input) {
    //input태그에 파일이 있는지 확인
    if (input.files && input.files[0]) {
        //fileReader 인스턴스 생성
        var reader = new FileReader();
        //이미지가 로드된 경우
        reader.onload = function(e) {
            document.getElementById('preview').src = e.target.result;
        };
        //reader가 이미지 읽도록 하기
        reader.readAsDataURL(input.files[0]);
    } else {
        document.getElementById('preview').src = "";
    }
}