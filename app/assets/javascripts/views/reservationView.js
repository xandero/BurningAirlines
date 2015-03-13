var app = app || {};

// Like Rails views but with the event handling stored here as well.
// Responsible for showing data on the page, but also allowing interaction.
app.ReservationView = Backbone.View.extend({
  el: '#main', // define the selector which this view is associated with
  
   events: {
    'click "???"': 'createReservation',
  },

  initialize: function () {
    if (app.currentView) {
      app.currentView.remove();
    }
    app.currentView = this;
  },

  render: function () {
    var reservationViewHTML = $('#reservationView-template').html();
    this.$el.html(reservationViewHTML);
    //this.$el.attr('id', 'reservation-view');
    //$('#content').html(this.el);
  },

  createReservation: function (event) {
      $(event.target).addClass("reserved");
      var seat_id = $(event.target).text();
      var row = //take cell ID, split, grab row
      var column = //take cell ID,, split, grab column
      var newReservation = new app.Reservation({user_id: @current_user.id, flight_id: @current_flight.id, row: row, column: column});
      newReservation.save();
      app.reservations.add(newReservation);
  },
});






 