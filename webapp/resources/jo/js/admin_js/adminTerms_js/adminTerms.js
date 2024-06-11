
$(document).ready(function() {
  $('#summernote').summernote({
      placeholder: "게시글을 작성해주세요.",
      height: 600,
      width: 800,
      toolbar: [
            // [groupName, [list of button]]
            ['style', ['bold', 'italic', 'underline', 'clear']],
            ['font', ['strikethrough', 'superscript', 'subscript']],
            ['fontsize', ['fontsize']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['height', ['height']],
            ['insert', ['picture']],
          ],
      focus: true,
      disableResizeEditor: true,
      callbacks: {
            onImageUpload: fileUpload
          }
  });
});

//썸머노트에 이미지 업로드가 발생하였을 때 동작하는 함수
function fileUpload(fileList){
    //썸머노트는 이미지를 추가하면 해당이미지 파일을 전달해 준다.
    //callback함수를 작성하지 않을경우 자동으로 이미지를 string으로 변환해서 보여주지만
    //customCallback을 작성할 경우 해당 이미지의 경로를 직접 주어야한다.
    
    //파일업로드를 할때는 form태그에서 encType을 multipart/form-data 형식으로
    //요청하는 것처럼 자바스크립트 객체에 FormData객체를 이용해서 ajax요청을 해준다.

    const fd = new FormData();
    for (let file of fileList) {
        fd.append("fileList", file);
    }
    insertFileApi(fd, function(nameList){
        for(let name of nameList) {
            $("#summernote").summernote('insertImage', "/mocozy/" + name);
        }
    });
    

    $summernote.summernote('insertNode', imgNode);
}

function insertFileApi(data, callback) {
    $.ajax({
        url: "upload.no",
        type: "POST",
        data: data, 
        processData: false, //기본이 true로 ture일때는 전송하는 data를 string으로 변환해서 요청
        contentType: false, //application/x-www-form-urlencoded; charset=UTF-8; -> multipart/form-data로 보내기위해 false로 고정
        dataType: "json", //서버로부터 json으로 데이터를 받겠다.
        success: function(changeNameList) {
            callback(changeNameList);
        },
        error: function() {
            console.log("파일업로드 api요청 실패")
        }
    })
}
