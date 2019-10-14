FROM ruby:2.6.5-buster

ARG cnb_uid=0
ARG cnb_gid=0

ARG stack_id

LABEL io.buildpacks.stack.id=${stack_id}
ENV CNB_STACK_ID=${stack_id}

ENV CNB_USER_ID=${cnb_uid}
ENV CNB_GROUP_ID=${cnb_gid}

# Overrides base image envs
ENV GEM_HOME /workspace/vendor/bundle
ENV BUNDLE_PATH="$GEM_HOME" \
	BUNDLE_APP_CONFIG="$GEM_HOME"
