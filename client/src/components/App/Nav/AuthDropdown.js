import React from 'react';
import { connect } from 'react-redux';
import Button from 'material-ui/Button';
import Menu, { MenuItem } from 'material-ui/Menu';
import IconButton from 'material-ui/IconButton';
import AccountCircle from 'material-ui-icons/AccountCircle';
import { signout, openDialog } from 'actions';
import history from 'config/history';

class AuthDropdown extends React.Component {
  constructor(props, context) {
    super(props, context);

    this.state = {
      anchorEl: null
    };
  }

  handleMenu = event => {
    this.setState({ anchorEl: event.currentTarget });
  };

  handleClickOpen = () => {
    this.props.openAuthDialog();
  };

  handleClick = event => {
    this.setState({ anchorEl: event.currentTarget });
  };

  handleClose = () => {
    this.setState({ anchorEl: null });
  };

  handleProfile = () => {
    this.setState({ anchorEl: null });
    history.push('/profile');
  };

  handleSignOut = () => {
    this.props.signout();
  };

  render() {
    const anchorEl = this.state.anchorEl;
    const open = Boolean(anchorEl);
    const { isSignedIn } = this.props;

    return (
      <div className="Nav_right_item">
        {!isSignedIn && (
          <Button color="inherit" onClick={this.handleClickOpen}>
            Login
          </Button>
        )}

        {isSignedIn && (
          <div>
            <IconButton
              aria-owns={open ? 'profile' : null}
              aria-haspopup="true"
              onClick={this.handleMenu}
              color="inherit"
            >
              <AccountCircle />
            </IconButton>
            <Menu
              id="profile"
              anchorEl={anchorEl}
              anchorOrigin={{
                vertical: 'top',
                horizontal: 'right'
              }}
              transformOrigin={{
                vertical: 'top',
                horizontal: 'right'
              }}
              open={open}
              onClose={this.handleClose}
            >
              <MenuItem onClick={this.handleProfile}>My Profile</MenuItem>
              <MenuItem onClick={this.handleSignOut}>Sign out</MenuItem>
            </Menu>
          </div>
        )}
      </div>
    );
  }
}

const mapStateToProps = state => ({
  isSignedIn: Boolean(state.currentUser.email)
});

const mapDispatchToProps = dispatch => ({
  signout: () => {
    dispatch(signout());
  },
  openAuthDialog: () => {
    dispatch(openDialog('AuthDialog'));
  }
});

export default connect(mapStateToProps, mapDispatchToProps)(AuthDropdown);
