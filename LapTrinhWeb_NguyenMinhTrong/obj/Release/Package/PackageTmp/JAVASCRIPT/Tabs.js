// JavaScript Document

var buttons=document.getElementsByClassName('tablinks');
var contents=document.getElementsByClassName('noidungtabs');
function showContent(id)
{
	for(var i=0;i<contents.length;i++)
	{
		contents[i].style.display='none';	
	}
	var content =document.getElementById(id);
	content.style.display='block';	
}
