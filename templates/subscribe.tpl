{extends 'base.tpl'}

{block 'javascript'}
<script src='/static/js/recaptcha.js'></script>
{/block}

{block 'content'}
<section class='block full-page'>
    <form id='subscribe' method='POST'>
        <fieldset>
            <h1>Subscribe</h1>
            <p>By adding your name and email you will be subscribed to the ACM listserv. You can remove yourself from the listserv at any time.</p>
            <div>
                <label for='name'>Name:</label>
                <input required placeholder='Joe Somebody' value='{$name}' type='text' name='name'>
            </div>
            <div>
                <label for='name'>Email:</label>
                <input required placeholder='joe@somebody.com' value='{$email}' type='email' name='email'>
            </div>
            <div>
                <label class='acm' value='{$account}' for='account'>Account:</label>
                <input placeholder='1234567' type='text' name='account'>
                <span class='hint'>Your ACM account number. This is optional.</span>
            </div>
            <div>
                {$captcha}
            </div>

            <div>
                <input type='submit' value='Subscribe' name='submit'>
            </div>
        </fieldset>
    </form>
</section>
{/block}
