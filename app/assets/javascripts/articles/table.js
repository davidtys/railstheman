    // from http://joequery.github.io/Stupid-Table-Plugin/
    $(function(){
        var table = $("#table-articles").stupidtable();

		table.bind('aftertablesort', function (event, data) {
		    // data.column - the index of the column sorted after a click
		    // data.direction - the sorting direction (either asc or desc)

		    var th = $(this).find("th");
		    th.find(".arrow").remove();
		    var arrow = data.direction === "asc" ? "↑" : "↓";
		    th.eq(data.column).append('<span class="arrow">' + arrow +'</span>');
		});        
    });