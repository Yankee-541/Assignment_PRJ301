/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function generatePagger(id, pageIndex, totalpage, gap) {
       var container = document.getElementById(id);
//    container.innerHTML = pageIndex + ' ' + totalpage + ' ' + gap;
       if (pageIndex - gap > 1) {
              container.innerHTML += '<a href="list?page=1">1</a>';
       }
       //trước page index
       for (var i = pageIndex - gap; i < pageIndex; i++) {
              if (i > 0) {
                     container.innerHTML += '<a href="list?page=' + i + '">' + i + '</a>';
              }
       }
       //pageindex đang ở vị trí này
       container.innerHTML += '<span>' + pageIndex + '</span>';
       //sau page index
       for (var i = pageIndex + 1; i <= pageIndex + gap; i++) {
              if (i <= totalpage) {
                     container.innerHTML += '<a href="list?page=' + i + '">' + i + '</a>';
              }
       }
       if (pageIndex + gap < totalpage) {
              container.innerHTML += '<a href="list?page=' + totalpage + '">Last</a>';
       }
}