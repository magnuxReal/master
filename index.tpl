{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}


{* START HOOK ASSIGN *}

{assign var="displayhometop" value="{hook h='displayHomeTop'}"}
{assign var="displayhomemiddle" value="{hook h='displayHomeMiddle'}"}
{assign var="displayhomefullwidthmiddle" value="{hook h='displayHomeFullWidthMiddle'}"}
{assign var="displayhomebottom" value="{hook h='displayHomeBottom'}"}

{assign var="displayhometopleft" value="{hook h='displayHomeTopLeft'}"}
{assign var="displayhometopleftone" value="{hook h='displayHomeTopLeftOne'}"}
{assign var="displayhometoplefttwo" value="{hook h='displayHomeTopLeftTwo'}"}
{assign var="displayhometopright" value="{hook h='displayHomeTopRight'}"}
{assign var="displayhometoprightone" value="{hook h='displayHomeTopRightOne'}"}
{assign var="displayhometoprighttwo" value="{hook h='displayHomeTopRightTwo'}"}

{assign var="displayhomebottomleft" value="{hook h='displayHomeBottomLeft'}"}
{assign var="displayhomebottomleftone" value="{hook h='displayHomeBottomLeftOne'}"}
{assign var="displayhomebottomlefttwo" value="{hook h='displayHomeBottomLeftTwo'}"}
{assign var="displayhomebottomright" value="{hook h='displayHomeBottomRight'}"}
{assign var="displayhomebottomrightone" value="{hook h='displayHomeBottomRightOne'}"}
{assign var="displayhomebottomrighttwo" value="{hook h='displayHomeBottomRightTwo'}"}

{* END HOOK ASSIGN *}

{* start displayhometop *}
{if isset($displayhometop) && $displayhometop|trim}{$displayhometop}{/if}
{* end displayhometop *}

{* start HOOK_HOME_TAB_CONTENT *}
{if isset($HOOK_HOME_TAB_CONTENT) && $HOOK_HOME_TAB_CONTENT|trim}
    {if isset($HOOK_HOME_TAB) && $HOOK_HOME_TAB|trim}
        <ul id="home-page-tabs" class="nav nav-tabs clearfix">
			{$HOOK_HOME_TAB}
		</ul>
	{/if}
	<div id="home-page-tab-content" class="tab-content carousel {if $xprt.view_all_prod != 1}hide_view_all{/if}">{$HOOK_HOME_TAB_CONTENT}</div>
{/if}
{* end HOOK_HOME_TAB_CONTENT *}

{* start HOOK_HOME *}
{if isset($HOOK_HOME) && $HOOK_HOME|trim}
	<div class="clearfix">{$HOOK_HOME}</div>
{/if}
{* end HOOK_HOME *}




{* start displayhometop *}
{if (isset($displayhometopleft) && $displayhometopleft)
|| (isset($displayhometopleftone) && $displayhometopleftone)
|| (isset($displayhometoplefttwo) && $displayhometoplefttwo)
|| (isset($displayhometopright) && $displayhometopright)
|| (isset($displayhometoprightone) && $displayhometoprightone)
|| (isset($displayhometoprighttwo) && $displayhometoprighttwo)
}

<div class="row">
    <div id="displayhometopleft" class="col-xs-12 col-sm-6 m_height_auto">
        {$displayhometopleft}
        {if (isset($displayhometopleftone) && $displayhometopleftone) || (isset($displayhometoplefttwo) && $displayhometoplefttwo)}
        <div class="row">
            <div id="displayhometopleftone" class="col-xs-12 col-xs-6 col-sm-6">
                {$displayhometopleftone}
            </div>
            <div id="displayhometoplefttwo" class="col-xs-12 col-xs-6 col-sm-6">
                {$displayhometoplefttwo}
            </div>
        </div>
        {/if}
    </div>
    <div id="displayhometopright" class="col-xs-12 col-sm-6 m_height_auto">
        {$displayhometopright}
        {if (isset($displayhometoprightone) && $displayhometoprightone) || (isset($displayhometoprighttwo) && $displayhometoprighttwo)}
        <div class="row">
            <div id="displayhometoprightone" class="col-xs-12 col-sm-6">
                {$displayhometoprightone}
            </div>
            <div id="displayhometoprighttwo" class="col-xs-12 col-sm-6">
                {$displayhometoprighttwo}
            </div>
        </div>
        {/if}
    </div>
</div>

{/if}
{* end displayhometop *}


		
{* start displayhomefullwidthmiddle *}
{if isset($displayhomefullwidthmiddle) && $displayhomefullwidthmiddle|trim}
			</div> <!-- center_column -->
		</div> <!-- row -->
	</div> <!-- container -->
	<div class="home_middle_fullwidth">
		{$displayhomefullwidthmiddle}
	</div>
	<div class="container">
		<div class="row">
			{if isset($left_column_size) && isset($right_column_size)}{assign var='cols' value=(12 - $left_column_size - $right_column_size)}{else}{assign var='cols' value=12}{/if}
			<div class="center_column col-xs-12 col-sm-{$cols|intval} m_height_0">
{/if}
{* end displayhomefullwidthmiddle *}



{* start displayhomemiddle *}
{if isset($displayhomemiddle) && $displayhomemiddle|trim}
	{$displayhomemiddle}
{/if}
{* end displayhomemiddle *}




{* start displayhometop *}
{if (isset($displayhomebottomleft) && $displayhomebottomleft)
|| (isset($displayhomebottomleftone) && $displayhomebottomleftone)
|| (isset($displayhomebottomlefttwo) && $displayhomebottomlefttwo)
|| (isset($displayhomebottomright) && $displayhomebottomright)
|| (isset($displayhomebottomrightone) && $displayhomebottomrightone)
|| (isset($displayhomebottomrighttwo) && $displayhomebottomrighttwo)
}
<div class="row">
    <div id="displayhomebottomleft" class="col-xs-12 col-sm-6">
        {$displayhomebottomleft}
        {if (isset($displayhomebottomleftone) && $displayhomebottomleftone) || (isset($displayhomebottomlefttwo) && $displayhomebottomlefttwo)}
        <div class="row">
            <div id="displayhomebottomleftone" class="col-xs-12 col-sm-6">
                {$displayhomebottomleftone}
            </div>
            <div id="displayhomebottomlefttwo" class="col-xs-12 col-sm-6">
                {$displayhomebottomlefttwo}
            </div>
        </div>
        {/if}
    </div>

    <div id="displayhomebottomright" class="col-xs-12 col-sm-6">
        {$displayhomebottomright}
        {if (isset($displayhomebottomrightone) && $displayhomebottomrightone) || (isset($displayhomebottomrighttwo) && $displayhomebottomrighttwo)}
        <div class="row">
            <div id="displayhomebottomrightone" class="col-xs-12 col-sm-6">
                {$displayhomebottomrightone}
            </div>
            <div id="displayhomebottomrighttwo" class="col-xs-12 col-sm-6">
                {$displayhomebottomrighttwo}
            </div>
        </div>
        {/if}
    </div>
</div>
{/if}
{* end displayhometop *}




{* start displayhomebottom *}
{if isset($displayhomebottom) && $displayhomebottom|trim}{$displayhomebottom}{/if}
{* end displayhomebottom *}
