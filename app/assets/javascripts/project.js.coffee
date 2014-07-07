jQuery ->
  $('#new_utterance_form').fileupload
    dataType: "script"
    add: (e, data) ->
      types = /(\.|\/)(wav)$/i
      file = data.files[0]
      if types.test(file.type) || types.test(file.name)
        data.context = $(tmpl("template-upload", file))
        $('#new_utterance_form').append(data.context)
        data.submit()
      else
        alert("#{file.name} is not a wav file")
    progress: (e, data) ->
      if data.context
        progress = parseInt(data.loaded / data.total * 100, 10)
        data.context.find('.bar').css('width', progress + '%')
