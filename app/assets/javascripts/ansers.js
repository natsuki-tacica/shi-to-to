// $(function(){
//   function buildHTML(anser){ 
//     var html = `<p>
//                   <strong>
//                     <a href=/groups/#{@group.id}/questions/#{@question.id}/ansers/new</a>
//                   </strong>
//                   ${anser.text}
//                 </p>`
//     return html;
//   }
//   $('#new_anser').on('submit', function(e){
//     e.preventDefault();
//     var formData = new FormData(this); 
//     var url = $(this).attr('action') 
//     $.ajax({
//       url: url,
//       type: "POST",
//       data: formData, 
//       dataType: 'json', 
//       processData: false, 
//       contentType: false
//     })
//   .done(function(data){
//     var html = buildHTML(data); $('.comments').append(html); $('.textbox').val(''); $('.form__submit').prop('disabled', false);
//     })
//   })
// })
