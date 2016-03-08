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
{if isset($products) && $products}
	{*define number of products per line in other page for desktop*}
	{if $page_name !='index' && $page_name !='product'}
		{assign var='nbItemsPerLine' value=3}
		{assign var='nbItemsPerLineTablet' value=2}
		{assign var='nbItemsPerLineMobile' value=3}
	{else}
		{assign var='nbItemsPerLine' value=4}
		{assign var='nbItemsPerLineTablet' value=3}
		{assign var='nbItemsPerLineMobile' value=2}
	{/if}
	{*define numbers of product per line in other page for tablet*}
	{assign var='nbLi' value=$products|@count}
	{math equation="nbLi/nbItemsPerLine" nbLi=$nbLi nbItemsPerLine=$nbItemsPerLine assign=nbLines}
	{math equation="nbLi/nbItemsPerLineTablet" nbLi=$nbLi nbItemsPerLineTablet=$nbItemsPerLineTablet assign=nbLinesTablet}
	<!-- Products list -->


	
	<ul{if isset($id) && $id} id="{$id}"{/if} class="product_list grid row{if isset($class) && $class} {$class}{/if} {if $xprt.gray_image_bg == 1}gray_image_bg{/if} {$xprt.prod_grid_qw_style}">
	{foreach from=$products item=product name=products}
		{math equation="(total%perLine)" total=$smarty.foreach.products.total perLine=$nbItemsPerLine assign=totModulo}
		{math equation="(total%perLineT)" total=$smarty.foreach.products.total perLineT=$nbItemsPerLineTablet assign=totModuloTablet}
		{math equation="(total%perLineT)" total=$smarty.foreach.products.total perLineT=$nbItemsPerLineMobile assign=totModuloMobile}
		{if $totModulo == 0}{assign var='totModulo' value=$nbItemsPerLine}{/if}
		{if $totModuloTablet == 0}{assign var='totModuloTablet' value=$nbItemsPerLineTablet}{/if}
		{if $totModuloMobile == 0}{assign var='totModuloMobile' value=$nbItemsPerLineMobile}{/if}
		<li class="ajax_block_product{if $page_name == 'index' || $page_name == 'product'} col-xs-6 col-sm-4 col-md-3{else} col-xs-12 col-sm-6 col-md-4{/if}{if $smarty.foreach.products.iteration%$nbItemsPerLine == 0} last-in-line{elseif $smarty.foreach.products.iteration%$nbItemsPerLine == 1} first-in-line{/if}{if $smarty.foreach.products.iteration > ($smarty.foreach.products.total - $totModulo)} last-line{/if}{if $smarty.foreach.products.iteration%$nbItemsPerLineTablet == 0} last-item-of-tablet-line{elseif $smarty.foreach.products.iteration%$nbItemsPerLineTablet == 1} first-item-of-tablet-line{/if}{if $smarty.foreach.products.iteration%$nbItemsPerLineMobile == 0} last-item-of-mobile-line{elseif $smarty.foreach.products.iteration%$nbItemsPerLineMobile == 1} first-item-of-mobile-line{/if}{if $smarty.foreach.products.iteration > ($smarty.foreach.products.total - $totModuloMobile)} last-mobile-line{/if}">
			<div class="product-container" itemscope itemtype="https://schema.org/Product">
				<div class="left-block">
					<div class="product-image-container">
						<div class="product_img_link">
							<a href="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" itemprop="url">
								<img class="{if $xprt.prod_grid_img_style == 'prod_grid_img_style_multi'}multi_img{elseif $xprt.prod_grid_img_style == 'prod_grid_img_style_hover'}hover_img{/if} replace-2x img-responsive lazy" data-imgs-attr="{hook h='productgridmultiimgs' product=$product count="{if $xprt.prod_grid_img_style == 'prod_grid_img_style_multi'}false{else}true{/if}" img_type='home_default'}" data-echo="{$link->getImageLink($product.link_rewrite, $product.id_image, 'home_default')|escape:'html':'UTF-8'}" src="{$img_dir}kr_loader.gif" alt="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" title="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" itemprop="image" />
							</a>
						</div>
						
						{* {if isset($homeSize)} width="{$homeSize.width}" height="{$homeSize.height}"{/if} *}

						{* {if (!$PS_CATALOG_MODE && ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
							<div class="content_price" itemprop="offers" itemscope itemtype="https://schema.org/Offer">
								{if isset($product.show_price) && $product.show_price && !isset($restricted_country_mode)}
									<span itemprop="price" class="price product-price">
										{hook h="displayProductPriceBlock" product=$product type="before_price"}
										{if !$priceDisplay}{convertPrice price=$product.price}{else}{convertPrice price=$product.price_tax_exc}{/if}
									</span>
									<meta itemprop="priceCurrency" content="{$currency->iso_code}" />
									{if $product.price_without_reduction > 0 && isset($product.specific_prices) && $product.specific_prices && isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0}
										{hook h="displayProductPriceBlock" product=$product type="old_price"}
										<span class="old-price product-price">
											{displayWtPrice p=$product.price_without_reduction}
										</span>
										{if $product.specific_prices.reduction_type == 'percentage'}
											<span class="price-percent-reduction">-{$product.specific_prices.reduction * 100}%</span>
										{/if}
									{/if}
									{if $PS_STOCK_MANAGEMENT && isset($product.available_for_order) && $product.available_for_order && !isset($restricted_country_mode)}
										<span class="unvisible">
											{if ($product.allow_oosp || $product.quantity > 0)}
													<link itemprop="availability" href="https://schema.org/InStock" />{if $product.quantity <= 0}{if $product.allow_oosp}{if isset($product.available_later) && $product.available_later}{$product.available_later}{else}{l s='In Stock'}{/if}{/if}{else}{if isset($product.available_now) && $product.available_now}{$product.available_now}{else}{l s='In Stock'}{/if}{/if}
											{elseif (isset($product.quantity_all_versions) && $product.quantity_all_versions > 0)}
													<link itemprop="availability" href="https://schema.org/LimitedAvailability" />{l s='Product available with different options'}

											{else}
													<link itemprop="availability" href="https://schema.org/OutOfStock" />{l s='Out of stock'}
											{/if}
										</span>
									{/if}
									{hook h="displayProductPriceBlock" product=$product type="price"}
									{hook h="displayProductPriceBlock" product=$product type="unit_price"}
								{/if}
							</div>
						{/if} *}


						{if isset($product.new) && $product.new == 1}
							{if $xprt.prd_list_new_badge == 1}
								<a class="new-box" href="{$product.link|escape:'html':'UTF-8'}">
									<span class="new-label">{l s='New'}</span>
								</a>
							{/if}
						{/if}
						
						{if isset($product.on_sale) && $product.on_sale && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
							{if $xprt.prd_list_sale_badge == 1}
								<a class="sale-box" href="{$product.link|escape:'html':'UTF-8'}">
									<span class="sale-label">{l s='Sale!'}</span>
								</a>
							{/if}
						{/if}

						

						<div class="functional-buttons clearfix">
							{if isset($quick_view) && $quick_view}
								{if $xprt.prd_list_quickview == 1}
									<div class="quick-view-wrapper">
										<a class="quick-view {if $xprt.prod_grid_qw_style == 'quickwish_square'}tooltiptop" title="{l s='Quick view'}{/if}" href="{$product.link|escape:'html':'UTF-8'}" rel="{$product.link|escape:'html':'UTF-8'}" >
											<span>{l s='Quick view'}</span>
										</a>
									</div>
								{/if}
							{/if}
							
							{* wishlist hook *}
							{hook h='displayProductListFunctionalButtons' product=$product}

						</div>

					</div> <!-- product-image-container -->

					{if isset($product.is_virtual) && !$product.is_virtual}{hook h="displayProductDeliveryTime" product=$product}{/if}
					{hook h="displayProductPriceBlock" product=$product type="weight"}

				</div> <!-- left-block -->

				<div class="right-block">
					<h5 itemprop="name">
						{if isset($product.pack_quantity) && $product.pack_quantity}{$product.pack_quantity|intval|cat:' x '}{/if}
						<a class="product-name" href="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" itemprop="url" >
							{$product.name|truncate:45:'...'|escape:'html':'UTF-8'}
						</a>
					</h5>
					{capture name='displayProductListReviews'}{hook h='displayProductListReviews' product=$product}{/capture}
					{if $smarty.capture.displayProductListReviews}
						<div class="hook-reviews">
						{hook h='displayProductListReviews' product=$product}
						</div>
					{/if}
					<p class="product-desc" itemprop="description">
						{$product.description_short|strip_tags:'UTF-8'|truncate:360:'...'}
					</p>
					{if (!$PS_CATALOG_MODE AND ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
					<div class="content_price">
						{if isset($product.show_price) && $product.show_price && !isset($restricted_country_mode)}
							{hook h="displayProductPriceBlock" product=$product type='before_price'}
							<span class="price product-price">
								{if !$priceDisplay}{convertPrice price=$product.price}{else}{convertPrice price=$product.price_tax_exc}{/if}
							</span>
							{if $product.price_without_reduction > 0 && isset($product.specific_prices) && $product.specific_prices && isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0}
								{hook h="displayProductPriceBlock" product=$product type="old_price"}
								<span class="old-price product-price">
									{displayWtPrice p=$product.price_without_reduction}
								</span>
								{hook h="displayProductPriceBlock" id_product=$product.id_product type="old_price"}
								{if $product.specific_prices.reduction_type == 'percentage'}
									<span class="price-percent-reduction">-{$product.specific_prices.reduction * 100}%</span>
								{/if}
							{/if}
							{hook h="displayProductPriceBlock" product=$product type="price"}
							{hook h="displayProductPriceBlock" product=$product type="unit_price"}
							{hook h="displayProductPriceBlock" product=$product type='after_price'}
						{/if}
					</div>
					{/if}
					
					<!-- product countdown -->
					{if !$PS_CATALOG_MODE}
		            {if isset($product.specific_prices)}
		            	{if ($smarty.now|date_format:'%Y-%m-%d %H:%M:%S' <= $product.specific_prices.to && $smarty.now|date_format:'%Y-%m-%d %H:%M:%S' >= $product.specific_prices.from)}
							{* {if Configuration::get("{$snt_shortname}prd_list_countdown") == 1} *}
							<div class="prod_countdown_area">
							<div id="prod_{$product.id_product}" class="prod_countdown styled" data-date="{$product.specific_prices.to|date_format} {$product.specific_prices.to|date_format:'%H:%M:%S'}"></div>
							{literal}
								<script type="text/javascript">
									$(function() {
										$('#prod_{/literal}{$product.id_product}{literal}').countdown({
											render: function(data) {
												$(this.el).html("<div class='prod_count_label'>{/literal}{l s='Expires:'}{literal}</div><div class='countdown_list days'><span class='countdown_digit'>" + this.leadingZeros(data.days, 3) + "</span><span class='countdown_label'>{/literal}{l s='d'}{literal}</span></div><div class='countdown_list hrs'><span class='countdown_digit'>" + this.leadingZeros(data.hours, 2) + "</span><span class='countdown_label'>{/literal}{l s='h'}{literal}</span></div><div class='countdown_list min'><span class='countdown_digit'>" + this.leadingZeros(data.min, 2) + "</span><span class='countdown_label'>{/literal}{l s='m'}{literal}</span></div><div class='countdown_list sec'><span class='countdown_digit'>" + this.leadingZeros(data.sec, 2) + "</span><span class='countdown_label'>{/literal}{l s='s'}{literal}</span></div>");
											}
										});
									});
								</script>
							{/literal}
							</div>
							{* {/if} *}
						{/if}
					{/if}
					{/if}
					<!-- end product countdown -->

					<div class="button-container">
						{if $xprt.prd_list_addtocart == 1}
							{if ($product.id_product_attribute == 0 || (isset($add_prod_display) && ($add_prod_display == 1))) && $product.available_for_order && !isset($restricted_country_mode) && $product.customizable != 2 && !$PS_CATALOG_MODE}
								{if (!isset($product.customization_required) || !$product.customization_required) && ($product.allow_oosp || $product.quantity > 0)}
									{capture}add=1&amp;id_product={$product.id_product|intval}{if isset($product.id_product_attribute) && $product.id_product_attribute}&amp;ipa={$product.id_product_attribute|intval}{/if}{if isset($static_token)}&amp;token={$static_token}{/if}{/capture}
									<a class="button ajax_add_to_cart_button btn btn-default" href="{$link->getPageLink('cart', true, NULL, $smarty.capture.default, false)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Add to cart'}" data-id-product-attribute="{$product.id_product_attribute|intval}" data-id-product="{$product.id_product|intval}" data-minimal_quantity="{if isset($product.product_attribute_minimal_quantity) && $product.product_attribute_minimal_quantity >= 1}{$product.product_attribute_minimal_quantity|intval}{else}{$product.minimal_quantity|intval}{/if}">
										<span>{l s='Add to cart'}</span>
									</a>
								{else}
<a href="{$product.link|escape:'html':'UTF-8'}?need=1" title="{$product.name|escape:'html':'UTF-8'}" class="button btn btn-default">
										<span>{l s='Add to cart'}</span>						
</a>
								
								{/if}
							{/if}

						{/if}
					</div>

					{* {if isset($product.color_list)}
						<div class="color-list-container">{$product.color_list}</div>
					{/if} *}

					<div class="product-flags">
						{if (!$PS_CATALOG_MODE AND ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
							{if isset($product.online_only) && $product.online_only}
								<span class="online_only">{l s='Online only'}</span>
							{/if}
						{/if}
						{if isset($product.on_sale) && $product.on_sale && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
							{elseif isset($product.reduction) && $product.reduction && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
								<span class="discount">{l s='Reduced price!'}</span>
							{/if}
					</div>

					{if (!$PS_CATALOG_MODE && $PS_STOCK_MANAGEMENT && ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
						{if isset($product.available_for_order) && $product.available_for_order && !isset($restricted_country_mode)}
							<span class="availability">
								<label>{l s='Available: '}</label>
								{if ($product.allow_oosp || $product.quantity > 0)}
									<span class="{if $product.quantity <= 0 && isset($product.allow_oosp) && !$product.allow_oosp} text-danger{elseif $product.quantity <= 0} text-warning{else} text-success{/if}">
										{if $product.quantity <= 0}{if $product.allow_oosp}{if isset($product.available_later) && $product.available_later}{$product.available_later}{else}{l s='In Stock'}{/if}{else}{l s='Out of stock'}{/if}{else}{if isset($product.available_now) && $product.available_now}{$product.available_now}{else}{l s='In Stock'}{/if}{/if}
									</span>
								{elseif (isset($product.quantity_all_versions) && $product.quantity_all_versions > 0)}
									<span class="text-warning">
										{l s='Product available with different options'}
									</span>
								{else}
									<span class="text-danger">
										{l s='Out of stock'}
									</span>
								{/if}
							</span>
						{/if}
					{/if}

				</div> <!-- right-block -->

				
				
				
			</div><!-- .product-container> -->
		</li>
	{/foreach}
	</ul>
{addJsDefL name=min_item}{l s='Please select at least one product' js=1}{/addJsDefL}
{addJsDefL name=max_item}{l s='You cannot add more than %d product(s) to the product comparison' sprintf=$comparator_max_item js=1}{/addJsDefL}
{addJsDef comparator_max_item=$comparator_max_item}
{addJsDef comparedProductsIds=$compared_products}
{/if}
