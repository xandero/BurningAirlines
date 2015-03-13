var app = app || {};

app.Airplane = Backbone.Model.extend({
  defaults: {
    name: 'New Plane',
    row: 0,
    column: 0
  }
});
