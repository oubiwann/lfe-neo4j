########
lfe-neo4j
########

Introduction
============

Add content to me here!

Dependencies
------------

This project assumes that you have `rebar`_ installed somwhere in your
``$PATH``.

This project depends upon the following, which installed to the ``deps``
directory of this project when you run ``make deps``:

* `LFE`_ (Lisp Flavored Erlang; needed only to compile)
* `lfeunit`_ (needed only to run the unit tests)
* `Neo4j`_


Installation
============

Add content to me here!


Usage
=====

Here's some sample usage from the LFE REPL:

```cl
> (slurp '"src/neo4j.lfe")
#(ok neo4j)
> (set data (get-service-root (make-url)))
#((#(#B(101 120 116 101 110 115 105 111 110 115) #(()))
   #(#B(110 111 100 101)
   ...
> (display-data data)
{[{<<"extensions">>,{[]}},
  {<<"node">>,<<"http://localhost/db/data/node">>},
  ...

```

.. Links
.. -----
.. _rebar: https://github.com/rebar/rebar
.. _LFE: https://github.com/rvirding/lfe
.. _lfeunit: https://github.com/lfe/lfeunit
.. _Neo4j: http://www.neo4j.org/