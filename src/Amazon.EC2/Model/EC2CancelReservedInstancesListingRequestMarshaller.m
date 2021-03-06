/*
 * Copyright 2010-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

#import "EC2CancelReservedInstancesListingRequestMarshaller.h"

@implementation EC2CancelReservedInstancesListingRequestMarshaller

+(AmazonServiceRequest *)createRequest:(EC2CancelReservedInstancesListingRequest *)cancelReservedInstancesListingRequest
{
    AmazonServiceRequest *request = [[EC2Request alloc] init];

    [request setParameterValue:@"CancelReservedInstancesListing"           forKey:@"Action"];
    [request setParameterValue:@"2013-10-01"   forKey:@"Version"];

    [request setDelegate:[cancelReservedInstancesListingRequest delegate]];
    [request setCredentials:[cancelReservedInstancesListingRequest credentials]];
    [request setEndpoint:[cancelReservedInstancesListingRequest requestEndpoint]];
    [request setRequestTag:[cancelReservedInstancesListingRequest requestTag]];

    if (cancelReservedInstancesListingRequest != nil) {
        if (cancelReservedInstancesListingRequest.reservedInstancesListingId != nil) {
            [request setParameterValue:[NSString stringWithFormat:@"%@", cancelReservedInstancesListingRequest.reservedInstancesListingId] forKey:[NSString stringWithFormat:@"%@", @"ReservedInstancesListingId"]];
        }
    }


    return [request autorelease];
}

@end

