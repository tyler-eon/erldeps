# erldeps

Simple dependency module for starting and stopping Erlang applications.

## Setup

Include the compiled beam file in your ebin path or add the source file to your
application directory tree. The file is small and doesn't require fancy
management by [Rebar](https://github.com/basho/rebar), but it would definitely
make it easier for you to keep the code up-to-date with the latest feature
changes and bug fixes.

## Usage

Very simple:

1. Call `erldeps:start([])` to start an application group.
2. Call `erldeps:stop([])` to stop an application group.

That's it. The idea is to allow someone to create one or more application
groups, which are ordered lists of applications that will be started from head
to tail, but shut down in the reverse order. **NOTE**: The application list
passed to `stop/1` should be in the same order as the list passed to `start/1`.

## Future

- Improve error handling. Handle cases where an application doesn't start or
  stop properly.
- Improve application schema. Allow tuples with more advanced options such as
  optional starting arguments and flags to skip/exit/etc on failure.
- Documentation doesn't seem necessary, but let's throw some in anyway.
- Add `eunit` test cases.
