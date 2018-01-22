.. _prereq_ome_common:

OME Common
==========

Various software packages are required to be installed in order to
build from source.  Several of these may also be built and installed
by this super-build.  However, note that the super-build cannot
provide *all* prerequisites; some will still need installing before
building, shown in the table below.

.. tabularcolumns:: |l|l|l|c|c|c|c|

+---------------+--------------+--------------+--------------------------------------------------+
|               |           Version           |                   When required                  |
+---------------+--------------+--------------+----------+---------------+--------------+--------+
| Package       | Recommended  | Minimum      | build    | superbuild    | Client build | Deploy |
+===============+==============+==============+==========+===============+==============+========+
| Boost         | 1.63         | 1.53         |    \•    |               | \•           | \•     |
+---------------+--------------+--------------+----------+---------------+--------------+--------+
| Xalan-C       | 1.11         | 1.11         |    \•    |               | \•           | \•     |
+---------------+--------------+--------------+----------+---------------+--------------+--------+
| Xerces-C      | 3.0          | 3.0          |    \•    |               | \•           | \•     |
+---------------+--------------+--------------+----------+---------------+--------------+--------+
| GTest         | 1.7          | 1.5          |    ◦     | ◦             |              |        |
+---------------+--------------+--------------+----------+---------------+--------------+--------+
| Doxygen       | 1.8          | 1.6          |    †     | †             |              |        |
+---------------+--------------+--------------+----------+---------------+--------------+--------+
| Graphviz      | 2.x          | 1.8.10       |    †     | †             |              |        |
+---------------+--------------+--------------+----------+---------------+--------------+--------+

\•
  Required
◦
  Optional
†
  Optional, needed to build the API reference
