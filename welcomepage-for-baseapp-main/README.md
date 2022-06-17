# welcomepage-for-baseapp

This will create, after login , a welcome page with info for members.

Create a folder named WelcomeScreen into src/screens and upload there these file

Open index.ts file in the same folder src/screens and paste this:

export * from './WelcomeScreen';

now go to src/routes/Layout and open the file index.tsx add

WelcomeScreen, in import from '../../screens';

replace wallets with intro here "return <Route {...rest}><Redirect to={'/intro'} /></Route>;"

add this line in mobile section

<PrivateRoute loading={userLoading} isLogged={isLoggedIn} path="/intro" component={WelcomeScreen} />

and also in the second section

<PrivateRoute loading={userLoading} isLogged={isLoggedIn} path="/intro" component={WelcomeScreen} /> 

now rebuild image and enjoy

if u think that is usefull do a little donation, tnx.

bitcoin

bc1q2vcrgyh464ggw5xsj3j9echnhpwfsyzme0sqqw

litecoin

LhYvLM26a7ftH76LAVu7T3Dox8rfCy1XVU
