var UsersList = React.createClass({
  propTypes: {
    emails: React.PropTypes.arrayOf(React.PropTypes.string)
  },

  render: function() {
    return (
      <div>
        {this.props.emails.map(function(email){
          return <div>Email: {email}</div>;
        })}
      </div>
    );
  }
});
