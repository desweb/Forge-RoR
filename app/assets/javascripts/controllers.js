function TicketListCtrl($scope, $http) {
    per_page = 5;
    $http.get('/fr/tickets.json').success(function(data) {
        $scope.tickets = data;
        $scope.nb_pages = $scope.tickets.length / per_page;
        $scope.pages = [];

        for(var i=0; i <= $scope.nb_pages; i++)
        {
            $scope.pages.push(i+1);
        }
        $scope.changePage(1);
    });

   $scope.changePage = function(page_id){
       $scope.displayed_tickets = $scope.tickets.slice((page_id-1)*per_page, page_id*per_page);
   }

 $scope.display_user = function(firstname, lastname)
 {
     if(firstname != null && lastname != null)
        return firstname.substring(0,1).toUpperCase()+'. '+lastname.substring(0,1).toUpperCase()+lastname.substring(1);
 }

    $scope.tickets_types = [];
    $http.get('/fr/ticket_types.json').success(function(data) {
        for (var type in data)
        {
            $scope.tickets_types[type] = data[type].name;
        }
    });

    $scope.tickets_states = [];
    $http.get('/fr/ticket_states.json').success(function(data) {
        for (var state in data)
        {
            $scope.tickets_states[state] = data[state].name;
        }
    });

    $scope.tickets_priorities = [];
    $http.get('/fr/ticket_priorities.json').success(function(data) {
        $scope.tickets_priorities = data;
        for (var priority in data)
        {
            $scope.tickets_priorities[priority] = data[priority].name;
        }
    });

    $scope.search = {ticket_state: '', ticket_type: '',ticket_priority: ''};
    $scope.$watch('search.ticket_state', function(newValue, oldValue) {
        if (newValue === null) {
            $scope.search.ticket_state = '';
        }
    });

    $scope.$watch('search.ticket_type', function(newValue, oldValue) {
        if (newValue === null) {
            $scope.search.ticket_type = '';
        }
    });

    $scope.$watch('search.ticket_priority', function(newValue, oldValue) {
        if (newValue === null) {
            $scope.search.ticket_priority = '';
        }
    });
}