$(document).ready ->
  $('#fileupload').fileupload
    dataType: 'json',
    done: (e, data) ->
      file = data.result
      console.log(
        data.textStatus,
        file.id,
      )
      
    fail: (e, data) ->
      alert 'Upload failed'  

    progressall: (e, data) ->
      progress = parseInt(data.loaded / data.total * 100, 10)
      $("#progress .bar").css "width", progress + "%"
      $("#progress .label").text(data.loaded + "/" + data.total)
      if progress == 100
        $("#progress .label").text("Done")
        $("#progress .bar").hide()



