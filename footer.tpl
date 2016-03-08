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
{if !isset($content_only) || !$content_only}
						</div><!-- #center_column -->
						
						{if isset($left_column_size) && !empty($left_column_size)}
							<div id="left_column" class="column sidebar col-xs-12 col-sm-{$left_column_size|intval} col-sm-pull-{12 -$left_column_size|intval}">{$HOOK_LEFT_COLUMN}</div>
						{/if}

						{if isset($right_column_size) && !empty($right_column_size)}
							<div id="right_column" class="col-xs-12 col-sm-{$right_column_size|intval} column sidebar">{$HOOK_RIGHT_COLUMN}</div>
						{/if}


						</div><!-- .row -->
					</div><!-- .container -->
				</div><!-- #columns -->
			</div><!-- .columns-container -->
			<!-- Footer -->
			<footer id="footer" class="footer {$xprt.footer_style}">
				{capture name='displayFooterTop'}{hook h='displayFooterTop'}{/capture}
				{if $smarty.capture.displayFooterTop}
				<div class="footer_top_area">
					<div class="footer_top container">
						<div class="row">{$smarty.capture.displayFooterTop}</div>
					</div>
				</div>
				{/if}
				{if isset($HOOK_FOOTER)}
				<div class="footer_middle_area">
					<div class="footer_middle container">
						<div class="row">{$HOOK_FOOTER}</div>
					</div>
				</div>
				{/if}
				{capture name='displayFooterBottom'}{hook h='displayFooterBottom'}{/capture}
				{if $smarty.capture.displayFooterBottom}
				<div class="footer_bottom_area">
					<div class="footer_bottom container">
						<div class="row">
							{$smarty.capture.displayFooterBottom}							
						</div>
					</div>
				</div>
				{/if}
			</footer><!-- #footer -->
		</div><!-- #page -->

		{if $xprt.page_header_style == 'header_sidebar_panel'}
			<div id="sidebar_panel" class="sidebar_panel left">
				<div class="sidebar_nav_icon nav_icon" data-action="toggle" data-side="left">
					<i class="icon-reorder"></i>
				</div>
				<div class="sidebar_panel_wrap">
					<div class="sidebar_panel_inner">
						<!-- Slidebar content. -->
						{hook h="displaySidebarPanel"}
					</div>
				</div>
			</div>
		{/if}


		{* scroll to top *}
		<div class="kr_scroll_top">
			<a id="scroll_top" href="#">
				<i class="arrow_carrot-up"></i>
			</a>
		</div>

{/if}
	{include file="$tpl_dir./global.tpl"}
		{if $smarty.capture.xprtblockcartcap}
			{$smarty.capture.xprtblockcartcap}
		{/if}

{if isset($xprt.custom_js) && !empty($xprt.custom_js)}
	<script type="text/javascript">
		{$xprt.custom_js}
	</script>
{/if}
<script type="text/javascript" charset="utf-8">
                                    var wtpQualitySign_projectId  = 79673;
                                    var wtpQualitySign_language   = "lt";
                                    </script><script src="https://www.paysera.lt/new/js/project/wtpQualitySigns.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>