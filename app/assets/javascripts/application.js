// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

	function allowDrop(ev) {
	    ev.preventDefault();
	}

	function drag(ev) {
	    ev.dataTransfer.setData("text", ev.target.src);
	}

	function drop(ev) {
	    ev.preventDefault();
	    var data = ev.dataTransfer.getData("text");
	    ev.target.src = data;
		var na = ev.target.name;
		document.getElementsByClassName(na)[0].value = data;
	}
	
	function change_class(ev, id) {
		var val = "";

		if (id.value == "default")
			val = "success";
		else if (id.value == "success")
			val = "danger";
		else if (id.value == "danger")
			val = "primary";
		else if (id.value == "primary")
			val = "info";
		else if (id.value == "info")
			val = "default";
		id.value = val;
		ev.className = "btn btn-" + val + " btn-lg btn-block";
		ev.name = val;
//		document.getElementsByClassName(id)[0].className = "btn btn-success";
//		document.getElementById(id)[0].value = "success";
	}