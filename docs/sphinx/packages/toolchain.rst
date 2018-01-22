.. _pkg_toolchain:

Basic toolchain
---------------

A functional compiler, assembler and linker are required to build C++
code.  The C++ compiler must support the C++11 standard at a minimum,
with selected C++14 features such as make_unique.  Optional C++14
features will be enabled if the compiler supports them, otherwise Boost
will be used to provide equivalent functionality.

+------------------+-----------------+
| System           | Package         |
+==================+=================+
| BSD Ports        | N/A*            |
+------------------+-----------------+
| Debian/Ubuntu    | build-essential |
+------------------+-----------------+
| Homebrew         | N/A†            |
+------------------+-----------------+
| RedHat/CentOS    | N/A‡            |
+------------------+-----------------+
| Windows          | N/A§            |
+------------------+-----------------+

\*
  Available by default.
†
  Install the command-line tools for :program:`Xcode` with
  ``xcode-select --install`` or the full :program:`Xcode` application
  from the `Mac App Store <https://itunes.apple.com/gb/app/xcode/id497799835>`__.
‡
  Run ``yum groupinstall "Development Tools"``.  You might additionally
  want to install `Devtoolset-4
  <https://www.softwarecollections.org/en/scls/rhscl/devtoolset-4/>`__
  to obtain a more recent compiler than provided by the system.  This
  is mandatory for CentOS/RHEL 6, and optional for CentOS/RHEL7 for all
  components except for ``ome-files-py``.
§
  Install Visual Studio 2015 or 2013.  Any of the full versions or the
  free Community edition will work.  The Community edition may be
  downloaded `here
  <https://www.visualstudio.com/en-us/downloads/download-visual-studio-vs.aspx>`__.
