$(document).ready ->
  $('#fileupload').fileupload
    dataType: 'json'
    
    fail: (e, data) ->
      alert 'Upload failed'  

    progressall: (e, data) ->
      progress = parseInt(data.loaded / data.total * 100, 10)
      $("#progress .bar").css "width", progress + "%"
      $("#progress .label").text(data.loaded + "/" + data.total)
      if progress == 100
        window.location.reload()
        $("#progress .bar").hide()

    add: (e, data) ->
      data.submit()
      return

    done: (e, data) ->
      return