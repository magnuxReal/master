
{assign var='xprtshortname' value="{Configuration::get('xprtshortname')}"}

{if $page_name =='index'}

		{if Configuration::get("{$xprtshortname}per_line_home") == 2}
		        {strip}
		        	{addJsDef prd_per_column=2}
		        	{addJsDef prd_per_column_tab=2}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {elseif Configuration::get("{$xprtshortname}per_line_home") == 3}
		        {strip}
		        	{addJsDef prd_per_column=3}
		        	{addJsDef prd_per_column_tab=3}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {elseif Configuration::get("{$xprtshortname}per_line_home") == 4}
		        {strip}
		        	{addJsDef prd_per_column=4}
		        	{addJsDef prd_per_column_tab=3}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
		{elseif Configuration::get("{$xprtshortname}per_line_home") == 5}
		        {strip}
		        	{addJsDef prd_per_column=5}
		        	{addJsDef prd_per_column_tab=4}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
		{elseif Configuration::get("{$xprtshortname}per_line_home") == 6}
		        {strip}
		        	{addJsDef prd_per_column=6}
		        	{addJsDef prd_per_column_tab=4}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
		{elseif Configuration::get("{$xprtshortname}per_line_home") == 7}
		        {strip}
		        	{addJsDef prd_per_column=7}
		        	{addJsDef prd_per_column_tab=5}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
		{elseif Configuration::get("{$xprtshortname}per_line_home") == 8}
		        {strip}
		        	{addJsDef prd_per_column=8}
		        	{addJsDef prd_per_column_tab=6}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {else}
	    		{strip}
		        	{addJsDef prd_per_column=6}
		        	{addJsDef prd_per_column_tab=4}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {/if}
	{elseif $page_name =='product'}
		{if Configuration::get("{$xprtshortname}per_line_product") == 2}
		        {strip}
		        	{addJsDef prd_per_column=2}
		        	{addJsDef prd_per_column_tab=2}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {elseif Configuration::get("{$xprtshortname}per_line_product") == 3}
		        {strip}
		        	{addJsDef prd_per_column=3}
		        	{addJsDef prd_per_column_tab=2}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {elseif Configuration::get("{$xprtshortname}per_line_product") == 4}
		        {strip}
		        	{addJsDef prd_per_column=4}
		        	{addJsDef prd_per_column_tab=3}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
		{elseif Configuration::get("{$xprtshortname}per_line_product") == 5}
		        {strip}
		        	{addJsDef prd_per_column=5}
		        	{addJsDef prd_per_column_tab=4}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
		{elseif Configuration::get("{$xprtshortname}per_line_product") == 6}
		        {strip}
		        	{addJsDef prd_per_column=6}
		        	{addJsDef prd_per_column_tab=4}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
		{elseif Configuration::get("{$xprtshortname}per_line_product") == 7}
		        {strip}
		        	{addJsDef prd_per_column=7}
		        	{addJsDef prd_per_column_tab=5}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
		{elseif Configuration::get("{$xprtshortname}per_line_product") == 8}
		        {strip}
		        	{addJsDef prd_per_column=8}
		        	{addJsDef prd_per_column_tab=6}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {else}
	    		{strip}
		        	{addJsDef prd_per_column=6}
		        	{addJsDef prd_per_column_tab=4}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {/if}
	{elseif $page_name =='category'}
		{if Configuration::get("{$xprtshortname}per_line_category") == 2}
		        {strip}
		        	{addJsDef prd_per_column=2}
		        	{addJsDef prd_per_column_tab=2}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {elseif Configuration::get("{$xprtshortname}per_line_category") == 3}
		        {strip}
		        	{addJsDef prd_per_column=3}
		        	{addJsDef prd_per_column_tab=2}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {elseif Configuration::get("{$xprtshortname}per_line_category") == 4}
		        {strip}
		        	{addJsDef prd_per_column=4}
		        	{addJsDef prd_per_column_tab=3}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
		{elseif Configuration::get("{$xprtshortname}per_line_category") == 5}
		        {strip}
		        	{addJsDef prd_per_column=5}
		        	{addJsDef prd_per_column_tab=4}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
		{elseif Configuration::get("{$xprtshortname}per_line_category") == 6}
		        {strip}
		        	{addJsDef prd_per_column=6}
		        	{addJsDef prd_per_column_tab=4}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {elseif Configuration::get("{$xprtshortname}per_line_category") == 7}
		        {strip}
		        	{addJsDef prd_per_column=7}
		        	{addJsDef prd_per_column_tab=5}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {elseif Configuration::get("{$xprtshortname}per_line_category") == 8}
		        {strip}
		        	{addJsDef prd_per_column=8}
		        	{addJsDef prd_per_column_tab=6}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {else}
	        	{strip}
		        	{addJsDef prd_per_column=4}
		        	{addJsDef prd_per_column_tab=3}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {/if}
	{else}
		{if Configuration::get("{$xprtshortname}per_line_othr") == 2}
		        {strip}
		        	{addJsDef prd_per_column=2}
		        	{addJsDef prd_per_column_tab=2}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {elseif Configuration::get("{$xprtshortname}per_line_othr") == 3}
		        {strip}
		        	{addJsDef prd_per_column=3}
		        	{addJsDef prd_per_column_tab=2}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {elseif Configuration::get("{$xprtshortname}per_line_othr") == 4}
		        {strip}
		        	{addJsDef prd_per_column=4}
		        	{addJsDef prd_per_column_tab=3}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
		{elseif Configuration::get("{$xprtshortname}per_line_othr") == 5}
		        {strip}
		        	{addJsDef prd_per_column=5}
		        	{addJsDef prd_per_column_mob=1}
		        	{addJsDef prd_per_column_tab=4}
		        {/strip}        
		{elseif Configuration::get("{$xprtshortname}per_line_othr") == 6}
		        {strip}
		        	{addJsDef prd_per_column=6}
		        	{addJsDef prd_per_column_tab=4}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {elseif Configuration::get("{$xprtshortname}per_line_othr") == 7}
		        {strip}
		        	{addJsDef prd_per_column=7}
		        	{addJsDef prd_per_column_tab=5}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {elseif Configuration::get("{$xprtshortname}per_line_othr") == 8}
		        {strip}
		        	{addJsDef prd_per_column=8}
		        	{addJsDef prd_per_column_tab=6}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {else}
	        	{strip}
		        	{addJsDef prd_per_column=4}
		        	{addJsDef prd_per_column_tab=3}
		        	{addJsDef prd_per_column_mob=1}
		        {/strip}
	    {/if}
	{/if}


{if $xprt.prod_page_style == 'prod_thumb_bottom' || $xprt.prod_page_style == 'prod_thumb_bottom_sidebar'}
	{assign var="thumb_list_bottom" value=thumb_list_bottom}
{else}
	{assign var="thumb_list_bottom" value=thumb_list_other}
{/if}

{strip}
	{addJsDefL name=min_item}{l s='Please select at least one product' js=1}{/addJsDefL}
	{addJsDefL name=max_item}{l s='You cannot add more than %d product(s) to the product comparison' sprintf=$comparator_max_item js=1}{/addJsDefL}

	{addJsDef sidebarpanel=$xprt.page_header_style}

	{addJsDef prodPageStyle=$thumb_list_bottom}
	
	{addJsDef comparator_max_item=$comparator_max_item}
	{addJsDef comparedProductsIds=$compared_products}
{/strip}
