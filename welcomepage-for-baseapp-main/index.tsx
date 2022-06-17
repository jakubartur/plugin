import * as React from 'react';
import { FormattedMessage, injectIntl } from 'react-intl';
import { Link, withRouter } from 'react-router-dom';

const Welcome = () => {
    return (
        <div className="pg-intro container">
            <h1 className="pg-intro__heading">
                Welcome to Your exchange name
            </h1>          
                     
			 <hr className="pg-intro__hr" />
            <h3>
                <a href="" target="_blank" className="page-intro-fees-link btn btn-dark" >
                    No KYC verification, minimum daily withdraw 500$. Contact us for any question.
                </a>
            </h3>
			<hr className="pg-intro__hr" />
            
            <h3>
                <Link to="/wallets" className="pg-intro-wallets-link btn btn-primary">
                    Continue to your account
                </Link>
            </h3>

        </div>
    )
}

export const WelcomeScreen = injectIntl(withRouter((Welcome)));
// export default WelcomeScreen
