var hover_circle = document.querySelectorAll('.hover_circle');
var color = ['green', 'blue', 'pink', 'purple','green', 'blue', 'pink', 'purple'];

for(var i = 0; i<hover_circle.length; i++){
    newcolor = color[i];
    hover_circle[i].style.stroke = "newcolor";
}
