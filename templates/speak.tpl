{extends 'base.tpl'}

{block 'title'}Speaking at ACM{/block}

{block 'css'}
<link rel='stylesheet' media='all' href='static/css/chosen.css'>
{/block}

{block 'javascript'}
<script src='static/js/chosen.jquery.min.js'></script>
<script src='static/js/recaptcha.js'></script>
{/block}

{block 'content'}
<section class='block full-page'>
    <form id='subscribe' method='POST'>
        <fieldset>
            <h1>Speaking at ACM</h1>
            {if $error}
            <span class='error'>{$error}</span>
            {/if}
            <p>Interested in a lightning talk or a full presentation? Then just fill in these details and our officers will get back to you to schedule a time and location. If you have questions <a href='tools/speaking.php'>read our guidelines on presenting at our chapter</a>.</p>
            <div>
                <label for='name'>Name:</label>
                <input required type='text' placeholder='Joe Somebody' name='name' value='{$name}'>
            </div>
            <div>
                <label for='email'>Email:</label>
                <input required placeholder='joe@somebody.com' type='email' name='email' value='{$email}'>
            </div>
            <div>
                <label for='topic'>Topic:</label>
                <select required id='topic' multiple="1" name='topic[]' value='{$topic}'>
                    <option value='hacker-culture'>Hacker Culture</option>
                    <option value='language-specific'>Language Specific</option>
                    <option value='library-specific'>Library Specific</option>
                    <option value='technology'>Technology</option>
                    <option value='business'>Business / Job Opportunity</option>
                </select>
            </div>
            <div>
                <label for='description'>Details:</label>
                <textarea required name='description' placeholder='A description of your talk'>{$talk}</textarea>
            </div>

            <div>
                {$captcha}
            </div>

            <div>
                <input type='submit' value='Send Talk' name='submit'>
            </div>
        </fieldset>
    </form>
</section>
<script>$('#topic').chosen();</script>
{/block}
