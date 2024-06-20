/**
 * Created by tjaspers on 20/06/2024.
 */

import { LightningElement, api, wire } from 'lwc';

import SHIFT_ITEM_STATUS from '@salesforce/schema/ShiftItem__c.Status__c';

export default class PresenceStatusSelector extends LightningElement {
  @api recordId;
  @api label;
  @api fieldApiName = SHIFT_ITEM_STATUS;

  shiftItem;
  queryError;

  get options() {

  }

  handleChange() {

  }
}