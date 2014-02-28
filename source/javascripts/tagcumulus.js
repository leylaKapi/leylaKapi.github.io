var json_data = (function () {
    var json = null;
    $.ajax({
        'async': false,
        'global': false,
        'url': '/javascripts/tag.json',
        'dataType': "json",
        'success': function (data) {
            json = data;
        }
    });
    return json;
})();
// Set callback to run when API is loaded
google.setOnLoadCallback(drawVisualization);


var colors=new Array('#FFFF00', '#FF34B3', '#FF00FF', '#54FF9F', '#0000EE', '#F08080', '#949494')
var n = Math.floor(Math.random() * colors.length + 1)-1;
// Called when the Visualization API is loaded.
function drawVisualization() {

    // Create and populate a data table.
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Tag');
    data.addColumn('string', 'URL');
    data.addColumn('number', 'Font size');

    //Define an array of 3-part tuples below
    //We're substituting them in via Python so there's a placeholder
    data.addRows(json_data.length);
    for (var i = 0; i < json_data.length; i++) {
        var url = window.location.href + json_data[i][1];
        data.setCell(i, 0, json_data[i][0]); // Tag
        data.setCell(i, 1, url); // URL for tag
        data.setCell(i, 2, 2+1.5*json_data[i][2]); // Font size for tag
    }

    // Instantiate our table object.
    var vis = new gviz_word_cumulus.WordCumulus(document.getElementById('tag-cloud'));

    // Draw our table with the data we created locally.
    vis.draw(data, {text_color: colors[n], speed: 50, width:220, height:220});
}
