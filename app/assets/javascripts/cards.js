var app = window.app = {};

app.Cards = function() {
  this._input = $('#cards-search-txt');
  this._initAutocomplete();
};

app.Cards.prototype = {

};

_initAutocomplete: function() {
  this._input
    .autocomplete({
      source: '/cards',
      appendTo: '#cards-search-results',
      select: $.proxy(this._select, this)
    })
    .autocomplete('instance')._renderItem = $.proxy(this._render, this);
}

_select: function(e, ui) {
  this._input.val(ui.item.name + ' - ' + ui.item.mana_cost);
  return false;
}

_render: function(ul, item) {
  var markup = [
    '<span class="img">',
      '<img src="' + item.image_url + '" />',
    '</span>',
    '<span class="title">' + item.name + '</span>',
    '<span class="author">' + item.mana_cost + '</span>'
  ];
  return $('<li>')
    .append(markup.join(''))
    .appendTo(ul);
}