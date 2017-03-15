import { connect } from 'react-redux';
import { login, logout, signup } from '../../actions/session_actions';
import Home from './home';


const mapStateToProps = ({ home }) => ({
  errors: home.errors
});

const mapDispatchToProps = () => {

  return {

  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Home);
