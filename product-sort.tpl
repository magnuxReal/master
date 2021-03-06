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

{if isset($p) AND $p}
    <div class="product-count">
    	{if ($n*$p) < $nb_products }
    		{assign var='productShowing' value=$n*$p}
        {else}
        	{assign var='productShowing' value=($n*$p-$nb_products-$n*$p)*-1}
        {/if}
        {if $p==1}
        	{assign var='productShowingStart' value=1}
        {else}
        	{assign var='productShowingStart' value=$n*$p-$n+1}
        {/if}
        {if $nb_products > 1}
        	{l s='Showing %1$d - %2$d of %3$d items' sprintf=[$productShowingStart, $productShowing, $nb_products]}
		{else}
        	{l s='Showing %1$d - %2$d of 1 item' sprintf=[$productShowingStart, $productShowing]}
       	{/if}
    </div>
{/if}

{if isset($orderby) AND isset($orderway)}
<ul class="display hidden-xs">
	{* <li class="display-title">{l s='View:'}</li> *}
    <li id="grid"><a rel="nofollow" href="#" title="{l s='Grid'}"><i class="icon_grid-2x2"></i>
    {* {l s='Grid'} *}
    </a></li>
    <li id="list"><a rel="nofollow" href="#" title="{l s='List'}"><i class="icon_ul"></i>
    	{* {l s='List'} *}
    </a></li>
</ul>

{/if}
