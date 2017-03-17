import { connect } from 'react-redux';
import { login, logout, signup } from '../../actions/session_actions';
import Home from './home';


const mapStateToProps = ({ home }) => ({
});

const mapDispatchToProps = (dispatch) => {

  return {
    login: guest => dispatch(login(guest))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Home);
