$(document).on('turbolinks:load', function() {

$(function(){
  function buildHTML(message){
    var addImage = (message.image == null) ? ``:`<img src = ${message.image}>`
    var html = `
    <ul class = 'ms__content--ul'>
    <li class = 'ms__content--ul-li'>
    <p class = 'ms__content--ul-li-imgField'>
    <image_tag class ='ms__content--ul-li-imgField-img'>${ addImage }
    </p>
    <p class = 'ms__content--ul-li-textField'>
    <p class = 'ms__content--ul-li-textField-user'>${ message.name }</p>
    <p class = 'ms__content--ul-li-textField-datetime'>${ message.date }</p>
    <p class = 'ms__content--ul-li-textField-body'>${ message.body }</p>
    </p>
    </li>
    </ul>
    `
    return html;
  }

  $('#new_message').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')

    $.ajax({
      url: url,
      type: 'POST',
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.ms__content').append(html)
      $('.ms__inputForm--field').val('')
      $('#message_image').val('')
    })
    .fail(function(){
      alert("メッセージを入力してください。")
    })
    return false;
  })


  $(function(){
    setInterval(reload, 50000)
    function reload(){
     var current_url = document.location.pathname;

     $.ajax({
      url: current_url,
      type: 'GET',
      dataType: 'json',
    })

     .done(function(messages){
      var message_size = $('.ms__content--ul').length;
      if (message_size !== messages.length){
        messages.forEach(function(message){
          html = buildHTML(message);
        });
        $('.ms__content').append(html)
      }
    })
   }
 });
});
});
