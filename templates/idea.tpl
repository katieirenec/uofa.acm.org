{extends 'base.tpl'}

{block 'title'}Joining our ACM Chapter{/block}

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
            <h1>Have an Idea for the ACM Competition?</h1>
            <p>Have an idea for a topic on the competition? Select one of
            the fields and enter your idea for the
            <div>
                <label for='name'>Name:</label>
                <input required placeholder='Joe Somebody' value='{$name}' type='text' name='name'>
            </div>
            <div>
                <label for='name'>Email:</label>
                <input required placeholder='joe@somebody.com' value='{$email}' type='email' name='email'>
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

            <div>
                {$captcha}
            </div>

            <div>
                <input type='submit' value='Subscribe' name='submit'>
            </div>
        </fieldset>
    </form>
</section>
<script>$('#topic').chosen();</script>
{/block}
