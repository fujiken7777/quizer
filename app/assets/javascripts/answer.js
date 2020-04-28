$(function() {
  $('button').click(function(e){
    var selectboxes = $('.custom-select option:selected').val();
    Number(selectboxes);
    var answer = $('.answer_number').val()
    if (selectboxes == answer) {
      alert("正解！！");
      // $('').animate({ width: 'show' }, 'slow');
    } else {
      alert("残念！！");
      // $('').animate({ width: 'show' }, 'slow');
    }
  });
});