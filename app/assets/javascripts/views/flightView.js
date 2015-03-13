var app = app || {};

// Like Rails views but with the event handling stored here as well.
// Responsible for showing data on the page, but also allowing interaction.
app.flightView = Backbone.View.extend({
  el: '#main', // define the selector which this view is associated with
  render: function () {
    var flightpViewHTML = $('#flightView-template').html();
    this.$el.html(flightViewHTML);

    this.collection.each(function (post) {
      var flightListView = new app.flightListView({model: flight});
      flightListView.render();
    });
  }
});
