angular.module('Forge-RoR', []).
    config(['$routeProvider', function($routeProvider) {
        $routeProvider.
            when('/tickets', {templateUrl: '/partials/tickets-list.html', controller: TicketListCtrl}).
            when('/tickets/:ticketId', {templateUrl: '/partials/tickets-detail.html', controller: TicketListCtrl}).
            otherwise({redirectTo: '/tickets'});
    }]);