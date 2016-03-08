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
<!DOCTYPE HTML>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<html{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}>
	<head>
		<meta charset="utf-8" />
		<title>{$meta_title|escape:'html':'UTF-8'}</title>
		{if isset($meta_description) AND $meta_description}
			<meta name="description" content="{$meta_description|escape:'html':'UTF-8'}" />
		{/if}
		{if isset($meta_keywords) AND $meta_keywords}
			<meta name="keywords" content="{$meta_keywords|escape:'html':'UTF-8'}" />
		{/if}
		 <meta name="verify-paysera" content="5dd0300b39d4f189c02a652e73d323e2">
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
		<meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />
		{if isset($css_files)}
			{foreach from=$css_files key=css_uri item=media}
				<link rel="stylesheet" href="{$css_uri|escape:'html':'UTF-8'}" type="text/css" media="{$media|escape:'html':'UTF-8'}" />
			{/foreach}
		{/if}
		{if isset($js_defer) && !$js_defer && isset($js_files) && isset($js_def)}
			{$js_def}
			{foreach from=$js_files item=js_uri}
			<script type="text/javascript" src="{$js_uri|escape:'html':'UTF-8'}"></script>
			{/foreach}
		{/if}

		{$HOOK_HEADER}


		{* <link href='http{if Tools::usingSecureMode()}s{/if}://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
		<link href='http{if Tools::usingSecureMode()}s{/if}://fonts.googleapis.com/css?family=Droid+Serif:400,700' rel='stylesheet' type='text/css'>
		<link href='http{if Tools::usingSecureMode()}s{/if}://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'> *}
		
		{* body font *}
		<link href="{xprtthemeeditormod::GetGoogleFontsURL('bodyfont')|escape:"html"}" rel='stylesheet' type='text/css'>
		{* heading font *}
		<link href="{xprtthemeeditormod::GetGoogleFontsURL('headingfont')|escape:"html"}" rel='stylesheet' type='text/css'>
		
		<link href="{xprtthemeeditormod::GetGoogleFontsURL('additionalfont')|escape:"html"}" rel='stylesheet' type='text/css'>


		<!--[if IE 8]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->
	</head>
	<body{if isset($page_name)} id="{$page_name|escape:'html':'UTF-8'}"{/if} class="{if isset($page_name)}{$page_name|escape:'html':'UTF-8'}{/if}{if isset($body_classes) && $body_classes|@count} {implode value=$body_classes separator=' '}{/if}{if $hide_left_column} hide-left-column{else} show-left-column{/if}{if $hide_right_column} hide-right-column{else} show-right-column{/if}{if isset($content_only) && $content_only} content_only{/if} lang_{$lang_iso} {$xprt.body_page_style} {$xprt.page_header_style} {$xprt.jk_style_demo}">
	{include file="./setting_files.tpl"}
	{if !isset($content_only) || !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
			<div id="restricted-country">
				<p>{l s='You cannot place a new order from your country.'}{if isset($geolocation_country) && $geolocation_country} <span class="bold">{$geolocation_country|escape:'html':'UTF-8'}</span>{/if}</p>
			</div>
		{/if}
		<div id="page">
			<div class="header-container {$xprt.page_header_style}">
				<header id="header" class="header {if $xprt.sticky_menu == 1}stickyclass{/if}">
					{capture name='displayBanner'}{hook h='displayBanner'}{/capture}
					{if $smarty.capture.displayBanner}
						<div class="banner">
							<div class="container">
								<div class="row">
									{$smarty.capture.displayBanner}
								</div>
							</div>
						</div>
					{/if}
					{capture name='displayNav'}{hook h='displayNav'}{/capture}
					{if $smarty.capture.displayNav}
						<div class="nav">
							<div class="container">
								<div class="row">
									<nav>{$smarty.capture.displayNav}</nav>
								</div>
							</div>
						</div>
					{/if}
					<div class="header_top">
						<div class="container">
							<div class="row">
								{if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
							</div>
						</div>
					</div>
				</header>
				{* Configuration::get('image_'); *}
				{if $page_name !='index'}
					<div class="page_heading_area" style="
					{if $page_name == 'category'}
							{if $category->id_image}
							background-image:url({$link->getCatImageLink($category->link_rewrite, $category->id_image, 'category_default')|escape:'html':'UTF-8'})
							{/if}
						{elseif $page_name == 'product'}
							{$imgbread = Configuration::get('image_product')}
							{if (isset($imgbread) && !empty($imgbread))}
								background-image:url({$modules_dir}xprtbreadcrumbmod/img/{$imgbread})
							{else}
								background-image:url({$img_dir}bg/Blog_grid.jpg)
							{/if}
						{elseif $page_name == 'cms'}
							{$imgbread = Configuration::get('image_cms')}
							{if (isset($imgbread) && !empty($imgbread))}
								background-image:url({$modules_dir}xprtbreadcrumbmod/img/{$imgbread})
							{else}
								background-image:url({$img_dir}bg/Blog_grid.jpg)
							{/if}
						{elseif $page_name == 'pagenotfound'}
							{$imgbread = Configuration::get('image_404')}
							{if (isset($imgbread) && !empty($imgbread))}
								background-image:url({$modules_dir}xprtbreadcrumbmod/img/{$imgbread})
							{else}
								background-image:url({$img_dir}bg/Blog_grid.jpg)
							{/if}
						{elseif ($page_name == 'module-smartblog-archive' || $page_name == 'module-smartblog-category'  || $page_name == 'module-smartblog-details'  || $page_name == 'module-smartblog-search' || $page_name == 'module-smartblog-tagpost')}
							{$imgbread = Configuration::get('image_blog')}
							{if (isset($imgbread) && !empty($imgbread))}
								background-image:url({$modules_dir}xprtbreadcrumbmod/img/{$imgbread})
							{else}
								background-image:url({$img_dir}bg/Blog_grid.jpg)
							{/if}
						{else}
							{$imgbread = Configuration::get('image_others')}
							{if (isset($imgbread) && !empty($imgbread))}
								background-image:url({$modules_dir}xprtbreadcrumbmod/img/{$imgbread})
							{else}
								background-image:url({$img_dir}bg/Blog_grid.jpg)
							{/if}
						{/if}

						
					">
						<div class="container">
							<div class="page_heading">
								<!-- page heading -->
								{if isset($smarty.capture.path)}{assign var='path' value=$smarty.capture.path}{/if}
								{if isset($path) AND $path}
									<h1>
										<span>
											{* {if $path|strpos:'span' !== false} *}
												{$path|@replace:'<a ': '<a class="unvisible" '|@replace:'<span class="navigation-pipe">': '<span class="unvisible">'}
											{* {/if} *}
										</span>
									</h1>
								{/if}
								{include file="$tpl_dir./breadcrumb.tpl"}
							</div>
						</div>
					</div>
				{/if}
			</div>

			<div class="columns-container {$xprt.page_header_style}">

				{if $page_name == 'index'}
					<div class="top_column_area">
						<div class="container">
							<div id="slider_row" class="row">
								{capture name='displayTopColumn'}{hook h='displayTopColumn'}{/capture}
								{if $smarty.capture.displayTopColumn}
									<div id="top_column" class="top_column col-xs-12 col-sm-12 m_height_0">{$smarty.capture.displayTopColumn}</div>
								{/if}
							</div>
						</div>
					</div>
				{/if}


				<div id="columns" class="columns">

					<div class="container">

						<div class="row">

							{if isset($left_column_size) && isset($right_column_size)}{assign var='cols' value=(12 - $left_column_size - $right_column_size)}{else}{assign var='cols' value=12}{/if}
							<div id="center_column" class="center_column col-xs-12 col-sm-{$cols|intval} {if $HOOK_RIGHT_COLUMN ==''}col-sm-push-{12-$cols}{/if}">
	{/if}
