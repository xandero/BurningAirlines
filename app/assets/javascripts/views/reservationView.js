var app = app || {};

// Like Rails views but with the event handling stored here as well.
// Responsible for showing data on the page, but also allowing interaction.
app.ReservationView = Backbone.View.extend({
  el: '#main', // define the selector which this view is associated with
  
   events: {
    'click': 'createReservation',
  },

  initialize: function () {
    if (app.currentView) {
      app.currentView.remove();
    };
    app.currentView = this;
  },

  render: function () {

    this.airplane = new app.Airplane({flight_id: this.model.get('id')});
          console.log(this.airplane.toJSON());

    this.airplane.fetch().done(function () { 
      var rows = this.airplane.get('row');
      console.log(rows);
      var columns = 20;
      var reservationViewHTML = $('#reservationView-template').html();
      this.$el.html(reservationViewHTML);
      $('body').append(this.$el);
      //this.$el.attr('id', 'reservation-view');
      //$('#content').html(this.el);
      for (var i = 1; i <= columns; i++) {
        for (var j = 1; j <= rows; j++) {
          k = this.numToChar(j);
          this.$el.find("#airplane").append("<div data-row=\"" + i + "\" data-column=\"" + k + "\">" + i + k + "</div>");
        }
        this.$el.find("#airplane").append("<br />");
      }
    });
  },

  numToChar: function (n) {
    return String.fromCharCode(64 + n);
  },

  createReservation: function (event) {
      $(event.target).addClass("reserved");
      var seat_id = $(event.target).text();
      var row;//take cell ID, split, grab row
      var column; //take cell ID,, split, grab column
      // var newReservation = new app.Reservation({user_id: @current_user.id, flight_id: @current_flight.id, row: row, column: column});
      // newReservation.save();
      // app.reservations.add(newReservation);
  },
});






 