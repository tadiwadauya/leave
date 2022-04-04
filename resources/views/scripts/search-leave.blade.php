<?php
/**
 * Created by PhpStorm.
 * User: Vincent Guyo
 * Date: 9/22/2019
 * Time: 14:22
 */
?>

<script>
    $(function() {
        var cardTitle = $('#card_title');
        var usersTable = $('#users_table');
        var resultsContainer = $('#search_results');
        var usersCount = $('#user_count');
        var clearSearchTrigger = $('.clear-search');
        var searchform = $('#search_users');
        var searchformInput = $('#user_search_box');
        var userPagination = $('#user_pagination');
        var searchSubmit = $('#search_trigger');
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        searchform.submit(function(e) {
            e.preventDefault();
            resultsContainer.html('');
            usersTable.hide();
            clearSearchTrigger.show();
            let noResulsHtml = '<tr>' +
                '<td>No Leave Requests Found.</td>' +
                '<td></td>' +
                '<td class="hidden-xs"></td>' +
                '<td class="hidden-xs"></td>' +
                '<td class="hidden-xs"></td>' +
                '<td class="hidden-sm hidden-xs"></td>' +
                '<td class="hidden-sm hidden-xs hidden-md"></td>' +
                '<td class="hidden-sm hidden-xs hidden-md"></td>' +
                '<td></td>' +
                '<td></td>' +
                '<td></td>' +
                '</tr>';

            $.ajax({
                type:'POST',
                url: "{{ route('search-leave') }}",
                data: searchform.serialize(),
                success: function (result) {
                    let jsonData = JSON.parse(result);
                    if (jsonData.length != 0) {
                        $.each(jsonData, function(index, val) {
                            let rolesHtml = '';
                            let roleClass = '';
                            let showCellHtml = '<a class="btn btn-sm btn-success btn-block" href="leaves/' + val.id + '" data-toggle="tooltip" title="{{ trans("usersmanagement.tooltips.show") }}"><i class="fa fa-eye fa-fw" aria-hidden="true"></i> <span class="hidden-xs hidden-sm">Show</span><span class="hidden-xs hidden-sm hidden-md"> Request</span></a>';
                            let editCellHtml = '<a class="btn btn-sm btn-info btn-block" href="leaves/' + val.id + '/edit" data-toggle="tooltip" title="{{ trans("usersmanagement.tooltips.edit") }}"><i class="fa fa-pencil fa-fw" aria-hidden="true"></i> <span class="hidden-xs hidden-sm">Edit</span><span class="hidden-xs hidden-sm hidden-md"> Request</span></a>';
                            let deleteCellHtml = '<form method="POST" action="/leaves/'+ val.id +'" accept-charset="UTF-8" data-toggle="tooltip" title="Delete">' +
                                '{!! Form::hidden("_method", "DELETE") !!}' +
                                '{!! csrf_field() !!}' +
                                '<button class="btn btn-danger btn-sm" type="button" style="width: 100%;" data-toggle="modal" data-target="#confirmDelete" data-title="Delete Request" data-message="Are you sure you want to delete this request?">' +
                                '<i class="fa fa-trash-o fa-fw" aria-hidden="true"></i>  <span class="hidden-xs hidden-sm">Delete</span><span class="hidden-xs hidden-sm hidden-md"> Request</span>' +
                                '</button>' +
                                '</form>';

                            $.each(val.status, function(roleIndex, state) {
                                if (state.status == "1") {
                                    roleClass = 'approved';
                                } else if (state.status == "0") {
                                    roleClass = 'warning';
                                }  else {
                                    roleClass = 'default';
                                };
                                rolesHtml = '<span class="label label-' + roleClass + '">' + state.status + '</span> ';
                            });
                            resultsContainer.append('<tr>' +
                                '<td>' + val.paynumber + '</td>' +
                                '<td>' + val.first_name + val.last_name +' </td>' +
                                '<td class="hidden-xs">' + val.type_of_leave + '</td>' +
                                '<td class="hidden-xs">' + val.days_taken + '</td>' +
                                '<td class="hidden-xs">' + val.date_from + '</td>' +
                                '<td class="hidden-xs">' + val.date_to + '</td>' +
                                '<td class="hidden-xs">' + val.created_at + '</td>' +
                                '<td class="hidden-sm hidden-xs"> ' + rolesHtml  +'</td>' +
                                '<td>' + deleteCellHtml + '</td>' +
                                '<td>' + showCellHtml + '</td>' +
                                '<td>' + editCellHtml + '</td>' +
                                '</tr>');
                        });
                    } else {
                        resultsContainer.append(noResulsHtml);
                    };
                    usersCount.html(jsonData.length + " {!! trans('usersmanagement.search.found-footer') !!}");
                    userPagination.hide();
                    cardTitle.html("{!! trans('usersmanagement.search.title') !!}");
                },
                error: function (response, status, error) {
                    if (response.status === 422) {
                        resultsContainer.append(noResulsHtml);
                        usersCount.html(0 + " {!! trans('usersmanagement.search.found-footer') !!}");
                        userPagination.hide();
                        cardTitle.html("{!! trans('usersmanagement.search.title') !!}");
                    };
                },
            });
        });
        searchSubmit.click(function(event) {
            event.preventDefault();
            searchform.submit();
        });
        searchformInput.keyup(function(event) {
            if ($('#user_search_box').val() != '') {
                clearSearchTrigger.show();
            } else {
                clearSearchTrigger.hide();
                resultsContainer.html('');
                usersTable.show();
                cardTitle.html("Showing All Requests");
                userPagination.show();
                usersCount.html(" ");
            };
        });
        clearSearchTrigger.click(function(e) {
            e.preventDefault();
            clearSearchTrigger.hide();
            usersTable.show();
            resultsContainer.html('');
            searchformInput.val('');
            cardTitle.html("Showing All Requests");
            userPagination.show();
            usersCount.html(" ");
        });
    });
</script>

