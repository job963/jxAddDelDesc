                                <select name="sShipSet" onChange="JavaScript:document.forms.shipping.submit();">
                                    [{foreach key=sShipID from=$oView->getAllSets() item=oShippingSet name=ShipSetSelect}]
                                        <option value="[{$sShipID}]" [{if $oShippingSet->blSelected}]SELECTED[{/if}]>[{ $oShippingSet->oxdeliveryset__oxtitle->value }]</option>
										[{if $oShippingSet->blSelected}][{assign var="shippingdesc" value=$oShippingSet->oxdeliveryset__jxdesc->getRawValue()}][{/if}]
                                    [{/foreach}]
                                </select>
                                <noscript>
                                    <button type="submit" class="submitButton largeButton">[{ oxmultilang ident="PAGE_CHECKOUT_PAYMENT_UPDATESHIPPING" }]</button>
                                </noscript>
                                <div style="margin-left:28px;margin-top:4px;">[{ $shippingdesc }]</div>
