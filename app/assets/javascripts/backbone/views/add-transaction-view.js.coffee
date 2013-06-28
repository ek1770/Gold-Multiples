window.AddTransactionView = Backbone.View.extend(
  tagName: "div"
  className: "add-transaction-view-insert"

  initialize: ->
    @render()
    $(".global-main-container").html ""
    $(".global-main-container").append @$el

    $("#id-input-file-1 , #id-input-file-2").ace_file_input
      no_file: "No File ..."
      btn_choose: "Choose"
      btn_change: "Change"
      droppable: false
      onchange: null
      thumbnail: false #| true | large

    $(".date-picker").datepicker()


    #whitelist:'gif|png|jpg|jpeg'
    #blacklist:'exe|php'
    #onchange:''
    #

    ###
    if(files instanceof Array || (!!window.FileList && files instanceof FileList)) {
    //check each file and see if it is valid, if not return false or make a new array, add the valid files to it and return the array
    //note: if files have not been dropped, this does not change the internal value of the file input element, as it is set by the browser, and further file uploading and handling should be done via ajax, etc, otherwise all selected files will be sent to server
    //example:
    var result = []
    for(var i = 0; i < files.length; i++) {
    var file = files[i];
    if((/^image\//i).test(file.type) && file.size < 102400)
    result.push(file);
    }
    return result;
    }
    ###

    #,
    #      before_remove : function() {
    #        return true;
    #      }
    $("#id-input-file-3").ace_file_input(
      style: "well"
      btn_choose: "Drop files here or click to choose"
      btn_change: null
      no_icon: "icon-cloud-upload"
      droppable: true
      thumbnail: "small"
      before_change: (files, dropped) ->
        true
    ).on "change", ->


    #console.log($(this).data('ace_input_files'));
    #console.log($(this).data('ace_input_method'));

  render: ->
    @$el.html addTransactionTemplate()
)
