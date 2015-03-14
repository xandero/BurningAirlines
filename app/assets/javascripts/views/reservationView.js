var app = app || {};

// Like Rails views but with the event handling stored here as well.
// Responsible for showing data on the page, but also allowing interaction.
app.ReservationView = Backbone.View.extend({
  el: '#main', // define the selector which this view is associated with
  
   events: {
    'click #airplane': 'createReservation',
  },

  initialize: function () {
    if (app.currentView) {
      app.currentView.remove();
    };
    app.currentView = this;
  },

  render: function () {
    var self = this;
    this.airplane = new app.Airplane({flight_id: this.model.get('id')});
    this.reservations = new app.Reservations({flight_id: this.model.get('id')});
    this.airplane.fetch().done(function (airplane) { 
      self.airplane = airplane;
      console.log(self.airplane);
      self.reservations.fetch().done(function (reservations) {
        self.reservations = reservations;
        console.log(self.airplane);
        console.log(self.reservations);

        var rows = self.airplane.row;
        var columns = self.airplane.column;
        var reservationViewHTML = $('#reservationView-template').html();
        self.$el.html(reservationViewHTML);
        $('body').append(self.$el);
        //self.$el.attr('id', 'reservation-view');
        //$('#content').html(self.el);
        for (var i = 1; i <= rows; i++) {
          for (var j = 1; j <= columns; j++) {
            k = self.numToChar(j);
            self.$el.find("#airplane").append("<div id=" + i + k + " data-row=\"" + i + "\" data-column=\"" + k + "\">" + i + k + "</div>");
          }
          self.$el.find("#airplane").append("<br />");

        }
        for (var i = 0; i < self.reservations.length; i++) {
          var row = self.reservations[i].seat_row;
          var column = self.reservations[i].seat_column;
          var userID = self.reservations[i].user_id;
          var userName = app.users.get(userID).toJSON().name;
          $('#' + row + column).text(userName);
          
        };
      });
    });
  },

  numToChar: function (n) {
    return String.fromCharCode(64 + n);
  },

  createReservation: function (event) {
      $(event.target).addClass("reserved");
      var row = $(event.target).attr('data-row');;//take cell ID, split, grab row
      var column = $(event.target).attr('data-column');; //take cell ID,, split, grab column
      var newReservation = new app.Reservation({
        user_id: 1, // user_id hard coded
        flight_id: this.model.get('id'),
        seat_row: row,
        seat_column: column
      });
      newReservation.save();
      // app.reservations.add(newReservation);
  },
});






 