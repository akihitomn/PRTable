// $(function(){

//   function appendStoryToSearchbox(story) {
//     var html = `
//     <div class = 'searchInputField'>
//       <p class = ''>${story.body}</p>
//     </div>
//     `
//     $('#story-search-result').append(html);
//   }

//   $("#story-search-field").on("keyup", function(e){
//     e.preventDefault();
//     var input = $("#story-search-field").val();

//     $.ajax({
//       type: 'GET',
//       url: '/companies/:company_id/stories/search',
//       data: {
//           keyword: input
//       },
//       dataType: 'json'
//     })

//     .done(function(stories){
//       $("#story-search-result").empty();
//       if (stories) {
//         stories.forEach(function(story){
//           appendStoryToTop(story);
//         });
//       }
//     })
//     .fail(function() {
//       alert("ユーザーの検索に失敗しました");
//     })
//   });

//   $(document).on('click','.story-search-remove', function(){
//     var parent = $(this).parent();
//     parent.remove();
//   });


// })

// // $(document).ready(function(){
// //   var $searchTrigger = $('[data-ic-class="search-trigger"]'),
// //       $searchInput = $('[data-ic-class="search-input"]'),
// //       $searchClear = $('[data-ic-class="search-clear"]');

// //   $searchTrigger.click(function(){
// //     var $this = $('[data-ic-class="search-trigger"]');
// //     $this.addClass('active');
// //     $searchInput.focus();
// //   });

// //   $searchInput.blur(function(){
// //     if($searchInput.val().length > 0){
// //       return false;
// //     } else {
// //       $searchTrigger.removeClass('active');
// //     }
// //   });

// //   $searchClear.click(function(){
// //     $searchInput.val('');
// //   });

// //   $searchInput.focus(function(){
// //     $searchTrigger.addClass('active');
// //   });

// // });
