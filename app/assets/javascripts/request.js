//requests/new.html.erb-----------------------

$(function(){
  function buildfield(index) {
  const html = '<div class="js-file-group" data-index="${index}" ><div class="tag-area_title">質問内容</div><div class="tag-area_form"><input type="text" name="request[tags_attributes][${index}][content]" id="reqest_tags_attributes_${index}_content"><span class="delete-form-btn">削除する</span><span class="add-form-btn">追加する</span></div></div>';
  return html;
  }

  let fileIndex = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100]
  var lastIndex = $(".js-file-group:last").data("index");
  fileIndex.splice(0, lastIndex);
  let fileCount = $(".hidden-destroy").length:
  let displayCount = $(".js-file-group").length
  $(".hidden-destroy").hide();
  if (fileIndex.length == 0) $(".add-form-btn").css("display","none");

  $(".add-form-btn").on("click", function(add) {
  	$(".tag-area").append(buildField(fileIndex[0]));
  	fileIndex.shift();
  	if (fileINdex.length == 0) $(".add-form-btn").css("display","none");
  	displayCount += 1;
  })

})

//----------------------------------------------