{include file="header.tpl"}
<div id="friendslistcontainer">
    {$form}
{if $users}
    <table id="friendslist" class="fullwidth listing">
    {foreach from=$users item=user}
        <tr class="r{cycle values=1,0}">
        {include file="user/user.tpl" user=$user page='myfriends'}
        </tr>
    {/foreach}
    </table>
	<div class="center">
	{$pagination}
	</div>
	{else}
	<div class="message">
		{$message}
	</div>
{/if}
</div>
{include file="footer.tpl"}