var app = app || {};

app.Flights = Backbone.Collections.extend({
  url: '/flights',
  model: app.Flight
});