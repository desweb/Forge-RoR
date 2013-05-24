function TicketListCtrl($scope, $http) {
    per_page = 5;
    $http.get('/fr/tickets.json').success(function(data) {
        $scope.tickets = data;
        $scope.nb_pages = $scope.tickets.length / per_page;
        $scope.pages = [];

        for(var i=0; i <= $scope.nb_pages-1; i++)
        {
            $scope.pages.push(i+1);
            console.log($scope.pages);
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
}