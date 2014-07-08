$(document).ready ->
  $('#fileupload').fileupload({
    dataType: 'json',
    done: (e, data) ->
      file = data.result
      console.log(
        data.textStatus,
        file.id,
      )
      
    fail: (e, data) ->
      alert 'Upload failed'  
  })


