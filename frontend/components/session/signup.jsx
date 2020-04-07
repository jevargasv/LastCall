import React from 'react';

class SignUp extends React.Component{
    constructor(props){
        super(props);
        this.state={ username:'', email: '', password:''}
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    update(field){
        return e => {this.setState({ [field]: e.target.value })}
    }

    handleSubmit(e){
        e.preventDefault();
        this.props.createUser(this.state);
    }

    render(){
        return(
            <>

            <h3>Sign Up!</h3>

            <form onSubmit={this.handleSubmit}>

            <label> Username      
                <input type="text" value={this.state.username} onChange={this.update('username')} />
            </label>
            <br/>
            
            <label> Email     
                <input type="text" value={this.state.email} onChange={this.update('email')} />
            </label>
            <br/>
            
            <label> Password     
                 <input type="password" value={this.state.password} onChange={this.update('password')} />
            </label>
            <br/> 

            <button type="submit">Sign Up! </button>
            <br/> 

            </form>

            </>
        )
    }
}

export default SignUp; 