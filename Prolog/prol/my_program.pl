% swipl -g "use_module(library(pengines)), server(8081)" -t halt my_program.pl
% swipl -g "use_module(library(pengines)), server(8080)" -t halt my_program.pl
% swipl -q -g "server(8080)" -t halt my_program.pl

:- module(pengine_server,
          [ server/1                   % +Port
          ]).
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_server_files)).
:- use_module(library(http/http_files)).
:- use_module(library(pengines)).
:- use_module(pengine_sandbox:library(pengines)).

:- http_handler(root(.), http_reply_from_files('.', []), [prefix]).

:- initialization
        http_server(http_dispatch, [port(8085)]).

server(Port) :-
    http_server(http_dispatch, [port(Port)]).

es_par(X) :- 0 is X mod 2.