import { connect } from 'react-redux';
import { login, logout, signup } from '../../actions/recipe_actions';
import Recipe from './recipe_form';


const mapStateToProps = ({ recipe }) => ({
  loggedIn: Boolean(recipe.currentUser),
  errors: recipe.errors
});

const mapDispatchToProps = (dispatch, { location }) => {
  const formType = location.pathname.slice(1);
  const processForm = (formType === 'login') ? login : signup;

  return {
    processForm: user => dispatch(processForm(user)),
    formType
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Recipe);
