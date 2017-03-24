import * as APIUtils from '../util/recipe_api_util';

export const RECEIVE_TAGS = 'RECEIVE_TAGS';

const receiveTags = tags => ({
  type: RECEIVE_TAGS,
  tags
});

export const fetchTags = () => dispatch => (
  APIUtils.fetchTags().then(data => dispatch(receiveTags(data)))
);
