#!/usr/bin/env bash
# PATCHNAME: Remove VNPAY VMB20
# MAXVER:
# MINVER: 56
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info "Removing smali..."
rm -f 'mbapk/mbapk_unpacked/smali_classes3/com/vnpay/ticketlib/Activity/VMB20MainActivity.smali'
for i in {9..82}; do
   # skip 77, 78, 79
   case $i in
       77 | 78 | 79 | 81 ) :; ;;
       *) rm -f "mbapk/mbapk_unpacked/smali_classes5/mbshield/EP$i.smali" ;;
   esac
done

info "Removing resources..."
rm -f 'mbapk/mnapk_unpacked/res/drawable-xhdpi/ic_home_vna.png'
rm -f 'mbapk/mnapk_unpacked/res/drawable-xhdpi/logo_vnairline.png'
rm -f 'mbapk/mnapk_unpacked/res/drawable-xxhdpi/ic_home_vna.png'
rm -f 'mbapk/mnapk_unpacked/res/drawable-xxhdpi/logo_vnairline.png'

# Remove activity
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20BlankActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.FlightTracking.SearchingResultActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.FlightTracking.FlightSearchingActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.FlightTracking.FollowingFlightActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.FlightTracking.FlightDetailActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20TimChuyenBayActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20ThoiGianActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20DiaDiemActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20HangHangKhongActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20LoadingActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.confirm.VMBConfirmBookActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20BookFlightSuccessActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20BookHistoryActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20TicketDetailsActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20TermActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20InfoServiceActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20ActivityThoiGianNew"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20BookFlightSuccessActivity2"'
manifest_remove 'android:name="com.vnpay.ticketlib.checkin.CheckinActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.checkin.PnrInfoActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.checkin.InitChooseSeatActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.checkin.UpdateInfoActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.checkin.UpdatePassportInfoActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.checkin.ReCheckinActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.checkin.TicketPreviewActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.checkin.CheckinConditionAcitvity"'
manifest_remove 'android:name="com.vnpay.ticketlib.checkin.SendMailActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.checkin.TermConditionActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.FlightTracking.FlightTrackingMapActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.VJInfoFlightActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.rename.VMBChangeNameActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.rename.VJDetailFeeActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.changeFlight.VJChangeFlightActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.VJListFlightActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.VJHistoryActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.history.VJInfoTicketActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.VJTermActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.history.VJDetailTicketActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.ancillary.VJAddOnMealActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20PaylaterActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.ebill.VMB20EBillActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.ebill.VMB20ConfirmExportBillActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.VJConfirmActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20FlightActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20AirportActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20IFlightActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20NewSortActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.VMB20DetailFlightActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.VMBManagerBookingActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.VMBDetailFeeActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.VMBInfoFlightActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.VMBSeatMapActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.seats.VMBInfoSeatActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.VjAddOn.ancillary.VNBL.VMBVNBLActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Voucher.VMBListVoucherActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Voucher.VMBDetailVoucherActivity"'
manifest_remove 'android:name="com.vnpay.tracking.ExitService"'
manifest_remove 'android:name="com.vnpay.tracking.TrackingReceiver"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.contact.VMBAddInfoActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.contact.VMBPassengerContactActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.infobook.VMBNewInfoBookActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.search.VMBNewSearchActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.search.VMBSortINTFlightActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.iflight.VMBNewIFlightsActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.iflight.VMBQuotePriceIFlightActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.checkin.PnrReviewActivity"'
manifest_remove 'android:name="com.vnpay.ticketlib.Activity.contact.VMBAddInfoActivity"'

# stub
sed -i 's|<activity android:exported="false" android:name="com.vnpay.air.ticket.vnpay_air_ticket.PaymentActivity">|<activity android:exported="false" android:name="test.app">|g' "$DIRPATH"/mbapk/mbapk_unpacked/AndroidManifest.xml
manifest_remove 'android:name="_vemaybay_payment"'
manifest_remove 'android:name="_vemaybay_payment_without_paymentcode"'
manifest_remove 'android:name="_vemaybay_payment_paylater"'


rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/base/partner/img_vnpay.webp'
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/base/partner/img_vna.webp'
sed_libapp 's|vna_flight_landing|broken_vna_ehh_idk|g'
