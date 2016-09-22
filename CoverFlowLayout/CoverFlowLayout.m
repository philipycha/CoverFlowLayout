//
//  CoverFlowLayout.m
//  CoverFlowLayout
//
//  Created by Philip Ha on 2016-09-22.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "CoverFlowLayout.h"

@implementation CoverFlowLayout

- (void)prepareLayout{
    
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(250, 250);
    
}

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    
    NSArray *attributes = [super layoutAttributesForElementsInRect:rect];
    
    CGRect visibleRegion;
    
    visibleRegion.origin = self.collectionView.contentOffset;
    visibleRegion.size = self.collectionView.bounds.size;
    
    for (UICollectionViewLayoutAttributes *attribute in attributes){
        
        if(CGRectIntersectsRect(rect, attribute.frame)){
            
            
            
        }
  
        
    }
    
    
    return attributes;
    
    
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds{
    
    return YES;
}

@end
