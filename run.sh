#!/bin/sh

ionic="ionic"

main() {
  display_info

  if [ -z "$WERCKER_IONIC_LOGIN_EMAIL" ]; then
    fail "ionic-login: email argument cannot be empty"
  fi

	if [ -z "$WERCKER_IONIC_LOGIN_PASSWORD" ]; then
    fail "ionic-login: password argument cannot be empty"
  fi

	# Command
  cmd="login"

  # Command arguments
  args=

	# email
  if [ -n "$WERCKER_IONIC_LOGIN_EMAIL" ]; then
    args="$args --email \"$WERCKER_IONIC_LOGIN_EMAIL\""
  fi

	# password
  if [ -n "$WERCKER_IONIC_LOGIN_PASSWORD" ]; then
    args="$args --password \"$WERCKER_IONIC_LOGIN_PASSWORD\""
  fi

	# Check if running in debug mode
  info "Running ionic command"
  if [ "$WERCKER_IONIC_LOGIN_DEBUG" = "true" ]; then
    info "$cli $cmd $args"
  fi

  eval "$cli" "$cmd" "$args"
}

display_info() {
  info "Running ionic info:"
  "$cli" info
  echo ""
}

main;
