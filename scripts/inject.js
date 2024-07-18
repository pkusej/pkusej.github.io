hexo.extend.filter.register('theme_inject', function(injects) {
  
 
   injects.bodyEnd.raw('ads', '<a href="https://qingjuacg.top/help/" target="_blank" onclick="toExit();" style="color:#ffffff;display:block;width:-1;height:120px;background:url(/img/help.jpg);background-repeat:no-repeat;background-position:center;object-fit:cover;background-size:100%;border-radius:10px;">&nbsp;&nbsp;注意</a> ');
});